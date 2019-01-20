<?php
/**
 * Class Users.php.
 * Desc: Class for every Users function purposes
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Users extends Back_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
		$this->load->model('backend/UserAdmin_model','MAdmin');
	}

	public function index()
	{
		redirect('/backend/dashboard');
		exit;
	}

	public function profile()
	{
		$this->global['pageTitle'] = 'Profil Pengguna';
		$this->global['contentHeader'] = 'Profil Pengguna';
		$this->global['contentTitle'] = 'Profil '.$this->accName;
		$this->global ['name'] = $this->accName;
		$this->global ['type'] = $this->accType;
		$this->global ['group'] = $this->accGroup;
		$this->global ['role'] = $this->accRole;

		$data['is_authorized'] = $this->accType === "CMS" ? TRUE : FALSE;
		$data['username'] = $this->accKey;
		$data['name'] = $this->accName;
		$data['email'] = $this->accEmail;
		$data['type'] = $this->accType;
		$this->digiAdminLayout($data, 'backend/users/profile', $this->global);
	}
}
