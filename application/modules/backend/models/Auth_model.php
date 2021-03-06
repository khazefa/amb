<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class Auth_model.php.
 * Desc: lorem ipsum
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class Auth_model extends CI_Model
{
	protected $pTbl = "admin";
	protected $pKey = "adminname";
	protected $uKey = "adminname";

	protected $sTbl = "group";
	protected $sKey = "group_id";

	/**
	 * This function used to check the login credentials of the user
	 * @param string $username : This is username of the user
	 * @param string $password : This is encrypted password of the user
	 */
	function auth_default($username, $password)
	{
		$this->db->select('a.adminID, a.adminname, a.adminpassword, a.adminrealname, a.adminemail, a.adminkat, a.admintipe, a.admingroup, a.adminrole');
		$this->db->from('admin as a');
//		$this->db->join('group as g','g.group_id = a.group_id');
		$this->db->where('a.adminname', $username);
		$this->db->where('a.admintipe', 'CMS');
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

	/**
	 * This function used to check email exists or not
	 * @param {string} $email : This is users email id
	 * @return {boolean} $result : TRUE/FALSE
	 */
	function check_email_exist($email)
	{
		$this->db->select('adminemail');
		$this->db->where('adminemail', $email);
		$this->db->where('adminactivated', 1);
		$query = $this->db->get('admin');

		if ($query->num_rows() > 0){
			return true;
		} else {
			return false;
		}
	}

	/**
	 * This function used to insert reset password data
	 * @param {array} $data : This is reset password data
	 * @return {boolean} $result : TRUE/FALSE
	 */
	function reset_password_user($data)
	{
		$result = $this->db->insert('reset_password', $data);

		if($result) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	/**
	 * This function is used to get customer information by email-id for forget password email
	 * @param string $email : Email id of customer
	 * @return object $result : Information of customer
	 */
	function get_info_by_email($email)
	{
		$this->db->select('adminname, adminemail, adminrealname');
		$this->db->from('admin');
		$this->db->where('adminemail', $email);
		$this->db->where('adminactivated', 1);
		$query = $this->db->get();

		return $query->result();
	}

	/**
	 * This function used to check correct activation deatails for forget password.
	 * @param string $email : Email id of user
	 * @param string $activation_id : This is activation string
	 */
	function check_activation_details($email, $activation_id)
	{
		$this->db->select('res_id');
		$this->db->from('reset_password');
		$this->db->where('email', $email);
		$this->db->where('activation_id', $activation_id);
		$query = $this->db->get();
		return $query->num_rows();
	}

	// This function used to create new password by reset link
	function create_password($email, $password)
	{
		$this->db->where('adminemail', $email);
		$this->db->where('adminactivated', 1);
		$this->db->update('admin', array('adminpassword'=>getHashedPassword($password)));
		$this->db->delete('reset_password', array('email'=>$email));
	}
}
