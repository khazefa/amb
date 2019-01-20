<?php
/**
 * Class UserAdmin_model.php.
 * Desc: UserAdmin Model
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class UserAdmin_model extends CI_Model
{
	protected $pTbl = "admin";
	protected $pKey = "adminname";
	protected $uKey = "adminname";

	protected $sTbl = "group";
	protected $sKey = "group_id";

	/**
	 * This function used to check email exists or not
	 * @param {string} $email : This is users email id
	 * @return {boolean} $result : TRUE/FALSE
	 */
	function check_email($email)
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

	// This function used to create new password by reset link
	function change_password($email, $password)
	{
		$this->db->where('adminemail', $email);
		$this->db->where('adminactivated', 1);
//		$this->db->update('admin', array('adminpassword'=>getHashedPassword($password)));
		$this->db->update('admin', array('adminpassword'=>md5($password)));
	}
}
