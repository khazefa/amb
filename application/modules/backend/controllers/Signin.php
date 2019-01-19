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
		$data = [
			//anything here
		];
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
		$input = $this->input->post(null, true);
		$username = element('username', $input);
		$password = element('password', $input);
		$sessionArray = array();

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
				$this->_login_fail();
			}
		} else {
			$this->_login_fail();
		}
	}

	/**
	 * On Login failed
	 */
	private function _login_fail()
	{
		setFlashData('error_login', 'Incorrect username or Password');
		redirect('/backend', true);
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
