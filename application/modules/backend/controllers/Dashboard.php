<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Class Dashboard.php.
 * Desc: lorem ipsum
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Dashboard extends Back_Controller
{
	public function __construct()
	{
		parent::__construct();
		//load session library
		$this->load->library('session');
	}

	public function index()
	{
		$data['pageTitle'] = "Dashboard";
		$this->digiAdminLayout($data, 'backend/dashboard');
	}
}
