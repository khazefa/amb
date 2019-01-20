<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Class Dashboard.php.
 * Desc: Dashboard of the application
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Dashboard extends Back_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
	}

	public function index()
	{
		$this->global['pageTitle'] = 'Dashboard';
		$this->global['contentHeader'] = 'Dashboard';
		$this->global['contentTitle'] = 'Dashboard';
		$this->global ['name'] = $this->accName;
		$this->global ['type'] = $this->accType;
		$this->global ['group'] = $this->accGroup;
		$this->global ['role'] = $this->accRole;

		$data = array();
		$this->digiAdminLayout($data, 'backend/dashboard', $this->global);
	}
}
