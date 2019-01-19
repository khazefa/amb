<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class Auth_model.php.
 * Desc: lorem ipsum
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Auth_model extends CI_Model
{
	protected $pTbl = "users";
	protected $pKey = "user_id";
	protected $uKey = "user_key";

	protected $sTbl = "user_group";
	protected $sKey = "group_id";

	/**
	 * This function used to check the login credentials of the user
	 * @param string $username : This is username of the user
	 * @param string $password : This is encrypted password of the user
	 */
	function auth_default($username, $password)
	{
		$this->db->select('a.adminname, a.adminpassword, a.adminrealname, a.adminemail, a.admintipe, a.admingroup, a.adminrole');
		$this->db->from('admin as a');
//		$this->db->join('group as g','g.group_id = a.group_id');
		$this->db->where('a.adminname', $username);
		$this->db->where('a.adminactivated', 1);
		$query = $this->db->get();

		$user = $query->result();

		if(!empty($user)){
//			if(verifyHashedPassword($password, $user[0]->adminpassword)){
			if(md5($password) == $user[0]->adminpassword){
				return $user;
			} else {
				return array();
			}
		} else {
			return array();
		}
	}

	/**
	 * This function used to check the login credentials of the user
	 * @param string $email : This is email of the user
	 * @param string $password : This is encrypted password of the user
	 */
	function auth_email($email, $password)
	{
		$this->db->select('a.adminname, a.adminpassword, a.adminrealname, a.adminemail, a.admintipe, a.admingroup, a.adminrole');
		$this->db->from('admin as a');
//		$this->db->join('group as g','g.group_id = a.group_id');
		$this->db->where('a.adminemail', $email);
		$this->db->where('a.adminactivated', 1);
		$query = $this->db->get();

		$user = $query->result();

		if(!empty($user)){
//			if(verifyHashedPassword($password, $user[0]->adminpassword)){
			if(md5($password) === $user[0]->adminpassword){
				return $user;
			} else {
				return array();
			}
		} else {
			return array();
		}
	}
}
