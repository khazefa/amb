<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Class UserAdmin.php.
 * Desc: Class for User Admin
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class UserAdmin extends Back_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
		$this->load->model('backend/UserAdmin_model','MUser');
	}

	public function index()
	{
		redirect('/backend/dashboard');
		exit;
	}

	// This function used to act to change the new password
	public function change_new_password()
	{
		$input = $this->input->post(null, true);
		$email = $this->accEmail;
		$password = element('param', $input);
		$output = null;

		// Check activation id in database
		$is_correct = $this->MUser->check_email($email);

		//Check Result ( Get status TRUE or FALSE )
		if($is_correct)
		{
			$this->MUser->change_password($email, $password);
			$result = array(
				'status' => TRUE,
				'message' => 'Kata sandi Anda telah sukses diganti.'
			);
		}
		else{
			$result = array(
				'status' => FALSE,
				'message' => 'Kata sandi Anda telah gagal diganti.'
			);
		}

		$output = $this->output
			->set_content_type('application/json')
			->set_output(json_encode($result));
		return $output;
	}
}
