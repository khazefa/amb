<?php
/**
 * Class CAdminCms.php.
 * Desc: Class for every user admin features function purposes
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class CAdminCms extends Back_Controller
{
    private $cname = 'backend/admin-cms';
    private $cname_module = 'backend/setting-module';
    private $view_dir = 'backend/acms/';
    private $readonly = TRUE;

    /**
     * This is default constructor of the class
     */
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
        $this->load->model('backend/UserAdmin_model','MAdmin');
        $this->load->model('backend/Module_model','MModule');
        $this->load->model('backend/ModuleRights_model','MRights');
        if($this->isCMSAdmin()){
            $this->readonly = FALSE;
        }
    }

    /**
     * This function is used to load the menu index
     */
	public function index()
	{
		$this->global['pageTitle'] = 'Admin CMS';
		$this->global['contentHeader'] = 'Admin CMS';
		$this->global['contentTitle'] = 'Admin CMS';
		$this->global ['name'] = $this->accName;
		$this->global ['type'] = $this->accType;
		$this->global ['group'] = $this->accGroup;
		$this->global ['role'] = $this->accRole;

		$data['readonly'] = $this->readonly;
        $data['classname'] = $this->cname;
        $data['url_list'] = base_url($this->cname.'/list/json');
		$this->digiAdminLayout($data, $this->view_dir.'index', $this->global);
    }

    /**
     * This function is used to get list data in json type or array
     */
    public function get_list($type){
        $rs = array();
        $arrWhere = array();
        $data = array();
        $output = null;
        $isParam = FALSE;
        
        $fname = $this->input->post('fname', TRUE);
        $femail = $this->input->post('femail', TRUE);
		$flimit = 1000;
		
        //Condition
        if ($fname != "") $arrWhere['adminrealname'] = $fname;
        if ($femail != "") $arrWhere['adminemail'] = $femail;
        $arrWhere['admintipe'] = "CMS";

        $rs = $this->MAdmin->get_data($this->security->xss_clean($arrWhere), array('adminrealname'=>'ASC'), $flimit);
        
        switch($type) {
            case "json":
                foreach ($rs as $r) {
                    $pid = filter_var($r['adminID'], FILTER_SANITIZE_NUMBER_INT);
                    $name = filter_var($r['adminrealname'], FILTER_SANITIZE_STRING);
                    $email = filter_var($r['adminemail'], FILTER_SANITIZE_EMAIL);
                    $kat = filter_var($r['adminkat'], FILTER_SANITIZE_STRING);
                    $type = filter_var($r['admintipe'], FILTER_SANITIZE_STRING);
                    $group = filter_var($r['admingroup'], FILTER_SANITIZE_STRING);
                    $active = filter_var($r['adminactivated'], FILTER_SANITIZE_NUMBER_INT);

                    $row['name'] = $name;
                    $row['email'] = empty($email) ? '-' : $email;
                    $row['type'] = empty($type) ? '-' : $type;
                    $row['group'] = empty($group) ? '-' : $group;
                    $row['active'] = $active;
                    
                    if($this->readonly){
                        $row['button'] = '-';
                    }else{
                        $row['button'] = '<div class="btn-group">';
                            $row['button'] .= '<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">';
                            $row['button'] .= '<i class="fa fa-navicon"></i>';
                            $row['button'] .= '</button>';
                            $row['button'] .= '<ul class="dropdown-menu">';
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/edit/").$pid.'"><i class="fa fa-pencil"></i> Edit</a></li>';
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/remove/").$pid.'"><i class="fa fa-trash"></i> Delete</a></li>';
                            $row['button'] .= '</ul>';
                        $row['button'] .= '</div>';
                    }

                    $data[] = $row;
                }

                $output = $this->output
                        ->set_content_type('application/json')
                        ->set_output(json_encode(array('data'=>$data)));
            break;
            case "array":
                foreach ($rs as $r) {
                    $pid = filter_var($r['adminID'], FILTER_SANITIZE_NUMBER_INT);
                    $name = filter_var($r['adminrealname'], FILTER_SANITIZE_STRING);
                    $email = filter_var($r['adminemail'], FILTER_SANITIZE_EMAIL);
                    $kat = filter_var($r['adminkat'], FILTER_SANITIZE_STRING);
                    $type = filter_var($r['admintipe'], FILTER_SANITIZE_STRING);
                    $group = filter_var($r['admingroup'], FILTER_SANITIZE_STRING);
                    $active = filter_var($r['adminactivated'], FILTER_SANITIZE_NUMBER_INT);

                    $row['id'] = $pid;
                    $row['name'] = $name;
                    $row['email'] = $email;
                    $row['type'] = $type;
                    $row['group'] = $group;
                    $row['active'] = $active;
                    $data[] = $row;
                }
                $output = $data;
            break;
        }
        return $output;
    }

    /**
     * This function is used to get list data modul in array
     */
    private function get_list_modul(){
        $rs = array();
        $arrWhere = array();
        $data = array();
        $output = null;
        $isParam = FALSE;
		$flimit = 0;

        $rs = $this->MModule->get_data($this->security->xss_clean($arrWhere), array('mod_name'=>'ASC'), $flimit);
        foreach ($rs as $r) {
            $pid = filter_var($r['mod_id'], FILTER_SANITIZE_NUMBER_INT);
            $name = $r['mod_name'];
            $link = $r['mod_slug'];
            $icon = $r['mod_icon'];
            $active = $r['mod_active'];
            $has_parent = $r['mod_has_parent'];
            $position = $r['mod_sort'];

            $row['id'] = $pid;
            $row['name'] = filter_var($name, FILTER_SANITIZE_STRING);
            $row['link'] = filter_var($link, FILTER_SANITIZE_STRING);
            $row['icon'] = filter_var($icon, FILTER_SANITIZE_STRING);
            $row['active'] = $active;
            $row['parent'] = $has_parent;
            $row['position'] = filter_var($position, FILTER_SANITIZE_NUMBER_INT);
            $data[] = $row;
        }
        $output = $data;
        return $output;
    }

    /**
     * This function is used to get list data modul in array
     */
    private function get_list_rights(){
        $rs = array();
        $arrWhere = array();
        $data = array();
        $output = null;
        $isParam = FALSE;
		$flimit = 0;

        $rs = $this->MRights->get_data($this->security->xss_clean($arrWhere), array('modr_id'=>'ASC'), $flimit);
        foreach ($rs as $r) {
            $pid = filter_var($r['modr_id'], FILTER_SANITIZE_NUMBER_INT);
            $user_id = filter_var($r['adminID'], FILTER_SANITIZE_NUMBER_INT);
            $user_rights = filter_var($r['modr_rights'], FILTER_SANITIZE_NUMBER_INT);
            $active = filter_var($r['modr_active'], FILTER_SANITIZE_NUMBER_INT);

            $row['id'] = $pid;
            $row['uid'] = $user_id;
            $row['rights'] = $user_rights;
            $row['active'] = $active;
            $data[] = $row;
        }
        $output = $data;
        return $output;
    }

    /**
     * This function is used to load the add new form
     */
    function add()
    {   
        if($this->isCMSAdmin()){
            $this->global['pageTitle'] = "Tambah Data Admin - ".APP_NAME;
            $this->global['pageMenu'] = 'Tambah Data Admin';
            $this->global['contentHeader'] = 'Tambah Data Admin';
            $this->global['contentTitle'] = 'Tambah Data Admin';
            $this->global ['name'] = $this->accName;
            $this->global ['type'] = $this->accType;
            $this->global ['group'] = $this->accGroup;
            $this->global ['role'] = $this->accRole;

            $data['classname'] = $this->cname;
            $data['list_modul'] = $this->get_list_modul();
            $this->digiAdminLayout($data, $this->view_dir.'create', $this->global);
        }else{
            redirect($this->cname);
        }
    }
    
    /**
     * This function is used to add new data to the system
     */
    function create()
    {
        $funame = $this->input->post('funame', TRUE);
        $fupass = $this->input->post('fupass', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $femail = $this->input->post('femail', TRUE);
        $factive = $this->input->post('factive', TRUE);

        $dataInfo = array('adminname'=>$funame, 'adminpassword'=>md5($fupass), 'adminrealname'=>$fname, 'adminemail'=>$femail, 
            'adminkat'=>'', 'admintipe'=> 'CMS', 'admingroup'=>'', 'adminrole'=>'', 'admindropped'=>0, 'adminactivated'=>$factive, 
            'user_media'=>'');
        $count = $this->MAdmin->check_data_exists(array('adminname' => $funame));
        if ($count > 0)
        { 
            setFlashData('error', 'Username yang Anda inputkan sudah digunakan, harap menggunakan Username lainnya.');
            redirect($this->cname.'/add');
        }
        else
        { 
            $result = $this->MAdmin->insert_data($dataInfo);
        
            if($result > 0)
            {
                setFlashData('success', 'Data telah sukses ditambahkan');
                redirect($this->cname.'/edit/'.$result);
            }
            else
            {
                setFlashData('error', 'Data telah gagal ditambahkan');
                redirect($this->cname.'/add');
            }
        }
    }
    
    /**
     * This function is used load edit information
     * @param $fkey : Optional : This is data unique key
     */
    function edit($fkey = NULL)
    {
        if($this->isCMSAdmin()){
            if($fkey === NULL)
            {
                redirect($this->cname);
            }

            $this->global['pageTitle'] = "Edit Data Admin - ".APP_NAME;
            $this->global['pageMenu'] = 'Edit Data Admin';
            $this->global['contentHeader'] = 'Edit Data Admin';
            $this->global['contentTitle'] = 'Edit Data Admin';
            $this->global ['name'] = $this->accName;
            $this->global ['type'] = $this->accType;
            $this->global ['group'] = $this->accGroup;
            $this->global ['role'] = $this->accRole;

            $bid = intval($fkey);
            $data['classname'] = $this->cname;
            $data['classname_module'] = $this->cname_module;
            $data['access_rights'] = get_menu_rights($bid);
            $data['list_modul'] = $this->get_list_modul();
            $data['records'] = $this->get_edit($fkey);
            $this->digiAdminLayout($data, $this->view_dir.'edit', $this->global);
        }else{
            redirect($this->cname);
        }
    }

    /**
     * This function is used to get list information described by function name
     */
    public function get_edit($fkey){
        $rs = array(); 
        $arrWhere = array('adminID'=>$fkey);
        $flimit = 0;

        $rs = $this->MAdmin->get_data($this->security->xss_clean($arrWhere), array(), $flimit);
        
        $data = array();
        foreach ($rs as $r) {
            $pid = filter_var($r['adminID'], FILTER_SANITIZE_NUMBER_INT);
            $uname = filter_var($r['adminname'], FILTER_SANITIZE_STRING);
            $name = filter_var($r['adminrealname'], FILTER_SANITIZE_STRING);
            $email = filter_var($r['adminemail'], FILTER_SANITIZE_EMAIL);
            $kat = filter_var($r['adminkat'], FILTER_SANITIZE_STRING);
            $type = filter_var($r['admintipe'], FILTER_SANITIZE_STRING);
            $group = filter_var($r['admingroup'], FILTER_SANITIZE_STRING);
            $active = filter_var($r['adminactivated'], FILTER_SANITIZE_NUMBER_INT);

            $row['id'] = $pid;
            $row['uname'] = $uname;
            $row['name'] = $name;
            $row['email'] = $email;
            $row['type'] = $type;
            $row['group'] = $group;
            $row['active'] = $active;
 
            $data[] = $row;
        }
        
        return $data;
    }
    
    /**
     * This function is used to edit the data information
     */
    function update()
    {
        $fid = $this->input->post('fid', TRUE);
        $funame = $this->input->post('funame', TRUE);
        $fupass = $this->input->post('fupass', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $femail = $this->input->post('femail', TRUE);
        $factive = $this->input->post('factive', TRUE);

        if(empty($fupass))
        {
            $dataInfo = array('adminrealname'=>$fname, 'adminemail'=>$femail, 
                'adminkat'=>'', 'admintipe'=> 'CMS', 'admingroup'=>'', 'adminrole'=>'', 'admindropped'=>0, 'adminactivated'=>$factive, 
                'user_media'=>'');
        }else{
            $dataInfo = array('adminpassword'=>md5($fupass), 'adminrealname'=>$fname, 'adminemail'=>$femail, 
                'adminkat'=>'', 'admintipe'=> 'CMS', 'admingroup'=>'', 'adminrole'=>'', 'admindropped'=>0, 'adminactivated'=>$factive, 
                'user_media'=>'');
        }

        $result = $this->MAdmin->update_data($dataInfo, $fid);
        if($result == true)
        {
            setFlashData('success', 'Data is successfully updated');
            redirect($this->cname);
        }
        else
        {
            setFlashData('error', 'Failed to update data');
            redirect($this->cname.'/edit/'.$fid);
        }
    }
    
    /**
     * This function is used to delete the data
     * @return boolean $result : TRUE / FALSE
     */
    function delete($fkey = NULL)
    {
        $result = $this->MAdmin->delete_data($fkey);

        if($result > 0)
        {
            $result2 = $this->MRights->delete_data_by_uid($fkey);
            setFlashData('success', 'Data is successfully deleted');
        }
        else
        {
            setFlashData('error', 'Failed to delete data');
        }
        redirect($this->cname);
    }

    /**
     * This function is used to existing email
     * @return boolean $result : TRUE / FALSE
     */
    function check($action)
    {
        $status = FALSE;
        $funame = $this->input->post('funame', TRUE);
        $femail = $this->input->post('femail', TRUE);

        switch($action){
            case "email";
                $arrWhere = array('adminemail'=>$femail);
                $rs = $this->MAdmin->check_data_exists($arrWhere);
                if(intval($rs) > 0){
                    $result = array(
                        'status' => TRUE,
                        'message' => 'Email yang Anda inputkan sudah digunakan, harap menggunakan alamat email lainnya.'
                    );
                }else{
                    $result = array(
                        'status' => FALSE,
                        'message' => 'Anda dapat menggunakan alamat email ini.'
                    );
                }
            break;
            case "username";
                $arrWhere = array('adminname'=>$funame);
                $rs = $this->MAdmin->check_data_exists($arrWhere);
                if(intval($rs) > 0){
                    $result = array(
                        'status' => TRUE,
                        'message' => 'Username yang Anda inputkan sudah digunakan, harap menggunakan Username lainnya.'
                    );
                }else{
                    $result = array(
                        'status' => FALSE,
                        'message' => 'Anda dapat menggunakan Username ini.'
                    );
                }
            break;
        }
        
        $output = $this->output
			->set_content_type('application/json')
			->set_output(json_encode($result));
		return $output;
    }
}