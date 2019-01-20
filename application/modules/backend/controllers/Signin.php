<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Class Signin.php.
 * Desc: Extending Front_Controller. Check /core/Front_Controller
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Signin extends Front_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->refreshCache();
		//load session library
		$this->load->library('session');
		$this->load->model('backend/Auth_model','MLog');
	}

	/**
	 * On browser back button hit
	 * force to pre-Check
	 */
	private function refreshCache()
	{
		// any valid date in the past
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		// always modified right now
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
		// HTTP/1.1
		header("Cache-Control: private, no-store, max-age=0, no-cache, must-revalidate, post-check=0, pre-check=0");
		// HTTP/1.0
		header("Pragma: no-cache");
	}

	/**
	 * Show Login interface
	 */
	public function index()
	{
		//check for login status
		if ($this->session->userdata('logged_in')) {
			redirect('/backend/dashboard');
			exit;
		}

		$data = [];

		$this->digiView($data, 'layouts/backend/signin');
	}

	/**
	 * verify Login
	 *
	 * @param str username
	 * @param str password
	 */
	public function check()
	{
		$sessionArray = array();
		$input = $this->input->post(null, true);
		$username = element('username', $input);
		$password = element('password', $input);

		$recaptchaResponse = trim($this->input->post('g-recaptcha-response'));
		$userIp=$this->input->ip_address();
		$secret = $this->config->item('google_secret');
		$url="https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$recaptchaResponse."&remoteip=".$userIp;

		$isHuman = FALSE;
		if(!is_localhost()){
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			$output = curl_exec($ch);
			curl_close($ch);

			$status= json_decode($output, true);
			if ($status['success']) {
				$isHuman = TRUE;
				exit;
			}
		}else{
			$isHuman = TRUE;
		}

		if ($isHuman) {
			// Captcha validation passed
			if ($username && $password) {
				$result = $this->MLog->auth_default($username, $password);

				if(count($result) > 0)
				{
					foreach ($result as $res)
					{
						$sessionArray = array(
							'accKey' => $res->adminname,
							'accEmail' => $res->adminemail,
							'accName' => $res->adminrealname,
							'accKat' => $res->adminkat,
							'accType' => $res->admintipe,
							'accGroup' => $res->admingroup,
							'accRole' => $res->adminrole,
							'logged_in' => TRUE
						);
					}
					$this->session->set_userdata($sessionArray);
					redirect('/backend/dashboard');
				}else{
					$this->_login_fail("Incorrect username or Password");
				}
			} else {
				$this->_login_fail("Please input username or Password");
			}
		} else {
			// Captcha validation failed, return an error message
			$this->_login_fail("CAPTCHA validation failed, please try again.");
		}
	}

	/**
	 * On Login failed
	 */
	private function _login_fail($msg)
	{
		setFlashData('error_login', $msg);
		redirect('/backend', true);
	}

	public function forgot_password()
	{
		$input = $this->input->post(null, true);
		$email = element('email_forgot', $input);
		$output = null;

		if($this->MLog->check_email_exist($email)){
			$encoded_email = urlencode($email);

			$data['username'] = $email;
			$data['email'] = $email;
			$data['activation_id'] = generateRandomString(15);
			$data['created_at'] = date('Y-m-d H:i:s');
			$data['agent'] = getBrowserAgent();
			$data['client_ip'] = $this->input->ip_address();

//			var_dump($this->config->item('backend') . "reset_pass_confirm/" . $data['activation_id'] . "/" . $encoded_email);exit();
			$save = $this->MLog->reset_password_user($data);

			if($save)
			{
				$data1['reset_link'] = $this->config->item('backend') . "reset_pass_confirm/" . $data['activation_id'] . "/" . $encoded_email;
				$userInfo = $this->MLog->get_info_by_email($email);

				if(!empty($userInfo)){
					$data1["name"] = $userInfo[0]->adminrealname;
					$data1["email"] = $userInfo[0]->adminemail;
					$data1["message"] = "Reset Your Password";
				}

				$sendStatus = resetPasswordEmail($data1);

				if($sendStatus){
					$result = array(
						'status' => TRUE,
						'message' => 'Reset password link sent successfully, please check your email.'
					);
				} else {
					$result = array(
						'status' => TRUE,
						'message' => 'Email has been failed, try again.'
					);
				}
			}
			else
			{
				$result = array(
					'status' => TRUE,
					'message' => 'It seems an error while sending your details, try again.'
				);
			}
		}
		else
		{
			$result = array(
				'status' => FALSE,
				'message' => 'Reset password link sent successfully, please check your email.'
			);
		}

		$output = $this->output
			->set_content_type('application/json')
			->set_output(json_encode($result));
		return $output;
	}

	public function reset_pass_confirm($activation_id, $email)
	{
		$output = null;

		$email = urldecode($email);

		// Check activation id in database
		$is_correct = $this->MLog->check_activation_details($email, $activation_id);

		$data['email'] = $email;
		$data['activation_code'] = $activation_id;

		if ($is_correct == 1)
		{
			$this->session->set_flashdata('message', 'Email Anda terdaftar di sistem kami.');
			$data['email'] = $email;
			$data['activation_code'] = $activation_id;

			$this->digiView($data, 'layouts/backend/new-password');
		}
		else
		{
			//sengaja dibuat message yang sama, ini menghindari user/bot menebak-nebak email pengguna yang aktif di sistem
			$this->session->set_flashdata('message', 'Email Anda terdaftar di sistem kami.');
			redirect('backend');
		}
	}

	// This function used to act to change the new password
	public function change_new_password()
	{
		$input = $this->input->post(null, true);
		$activation_id = element('activation_code', $input);
		$email = element('email', $input);
		$password = element('password', $input);
		$cpassword = element('password', $input);
		$output = null;

		// Get email and activation code from URL values at index 3-4
		$email = urldecode($email);

		// Check activation id in database
		$is_correct = $this->MLog->check_activation_details($email, $activation_id);

		//Check Result ( Get status TRUE or FALSE )
		if($is_correct == 1)
		{
			$this->MLog->create_password($email, $password);
			$this->session->set_flashdata('message', 'Kata sandi Anda telah sukses diganti.');
			redirect('backend');
		}
		else{
			$this->session->set_flashdata('message', 'Kata sandi Anda telah gagal diganti.');
			redirect('backend');
		}
	}

	/**
	 * Sign out
	 */
	public function signout()
	{
		$this->session->sess_destroy();
		redirect('/backend', true);
	}
}
