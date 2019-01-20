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
			redirect('/backend/post');
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
					redirect('/backend/post');
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

	public function forgot_password(){
		$input = $this->input->post(null, true);
		$email = element('email_forgot', $input);

		if($this->MLog->check_email_exist($email)){
			$encoded_email = urlencode($email);

			$data['email'] = $email;
			$data['activation_id'] = generateRandomString(15);
			$data['created_at'] = date('Y-m-d H:i:s');
			$data['agent'] = getBrowserAgent();
			$data['client_ip'] = $this->input->ip_address();

			$save = $this->MLog->reset_password_user($data);

			if($save)
			{
				$data1['reset_link'] = $this->config->item('frontend') . "reset_pass_confirm/" . $data['activation_id'] . "/" . $encoded_email;
				$userInfo = $this->MLog->get_info_by_email($email);

				if(!empty($userInfo)){
					$data1["name"] = $userInfo[0]->user_fullname;
					$data1["email"] = $userInfo[0]->user_email;
					$data1["message"] = "Reset Your Password";
				}

				$sendStatus = resetPasswordEmail($data1);

				if($sendStatus){
					$this->response([
						'status' => TRUE,
						'message' => 'Reset password link sent successfully, please check your email.'
					], REST_Controller::HTTP_OK);
				} else {
					$this->response([
						'status' => FALSE,
						'message' => 'Email has been failed, try again.'
					], REST_Controller::HTTP_OK);
				}
			}
		}

		setFlashData('error_forgot', '');
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
