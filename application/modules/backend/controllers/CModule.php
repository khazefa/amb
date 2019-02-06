<?php
/**
 * Class CModule.php.
 * Desc: Class for every Module function purposes
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class CModule extends Back_Controller
{
    private $cname = 'backend/setting-module';
    private $cname_admin_cms = 'backend/admin-cms';
    private $view_dir = 'backend/modules/';
    private $readonly = TRUE;

    /**
     * This is default constructor of the class
     */
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
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
		$this->global['pageTitle'] = 'Pengaturan Modul';
		$this->global['contentHeader'] = 'Pengaturan Modul';
		$this->global['contentTitle'] = 'Pengaturan Modul';
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
        
        $fpid = $this->input->post('fpid', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $factive = $this->input->post('factive', TRUE);
        $fparent = $this->input->post('fparent', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
		$flimit = 100;
		
        //Condition
        if ($fpid != "") $arrWhere['mod_id'] = $fpid;
        if ($fname != "") $arrWhere['mod_name'] = $fname;
        if ($flink != "") $arrWhere['mod_slug'] = $flink;
        if ($factive != "") $arrWhere['mod_active'] = $factive;
        if ($fparent != "") $arrWhere['mod_has_parent'] = $fparent;
        if ($fposition != "") $arrWhere['mod_sort'] = $fposition;

        $rs = $this->MModule->get_data($this->security->xss_clean($arrWhere), array('mod_name'=>'ASC'), $flimit);
        
        switch($type) {
            case "json":
                foreach ($rs as $r) {
                    $pid = filter_var($r['mod_id'], FILTER_SANITIZE_NUMBER_INT);
                    $name = $r['mod_name'];
                    $link = $r['mod_slug'];
                    $icon = $r['mod_icon'];
                    $active = $r['mod_active'];
                    $has_parent = $r['mod_has_parent'];
                    $position = $r['mod_sort'];

                    $row['name'] = filter_var($name, FILTER_SANITIZE_STRING);
                    $row['link'] = filter_var($link, FILTER_SANITIZE_STRING);
                    $row['icon'] = '<i class="'.$icon.'"></i> '.filter_var($icon, FILTER_SANITIZE_STRING);
                    $row['active'] = $active === '1' ? 'Aktif' : 'Non Aktif';
                    $row['parent'] = module_parent_name('module','mod_id',$has_parent);
                    $row['position'] = filter_var($position, FILTER_SANITIZE_NUMBER_INT);
                    
                    if($this->readonly){
                        $row['button'] = '-';
                    }else{
                        $row['button'] = '<div class="btn-group">';
                            $row['button'] .= '<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">';
                            $row['button'] .= '<i class="fa fa-navicon"></i>';
                            $row['button'] .= '</button>';
                            $row['button'] .= '<ul class="dropdown-menu">';
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/edit/").$link.'"><i class="fa fa-pencil"></i> Edit</a></li>';
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/remove/").$link.'"><i class="fa fa-trash"></i> Delete</a></li>';
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
            break;
        }
        return $output;
    }

    /**
     * This function is used to load the add new form
     */
    function add()
    {   
        if($this->isCMSAdmin()){
            $this->global['pageTitle'] = "Tambah Data Modul - ".APP_NAME;
            $this->global['pageMenu'] = 'Tambah Data Modul';
            $this->global['contentHeader'] = 'Tambah Data Modul';
            $this->global['contentTitle'] = 'Tambah Data Modul';
            $this->global ['name'] = $this->accName;
            $this->global ['type'] = $this->accType;
            $this->global ['group'] = $this->accGroup;
            $this->global ['role'] = $this->accRole;

            $data['classname'] = $this->cname;
            $data['arr_modul'] = $this->get_list('array');
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
        $fid = $this->input->post('fid', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $ficon = $this->input->post('ficon', TRUE);
        $factive = $this->input->post('factive', TRUE);
        $fparent = $this->input->post('fparent', TRUE);

        $fuid = intval($this->accBid);
        $fukey = $this->accKey;

        $dataInfo = array('mod_name'=>$fname, 'mod_slug'=>$flink, 'mod_icon'=>$ficon, 'mod_active'=>$factive, 
            'mod_has_parent'=>$fparent);
        $count = $this->MModule->check_data_exists(array('mod_slug' => $flink));
        if ($count > 0)
        { 
            setFlashData('error', 'Link sudah ada, harap isi dengan link lainnya');
            redirect($this->cname.'/add');
        }
        else
        { 
            $result = $this->MModule->insert_data($dataInfo);
        
            if($result > 0)
            {
                if($fuid === 1 || $fukey === "galandro"){
                    $dataInfo2 = array('adminID'=>$fuid, 'modr_rights'=>$result, 'modr_active'=>1);
                    $result2 = $this->MRights->insert_data($dataInfo2);
                }
                setFlashData('success', 'Data telah sukses ditambahkan');
                redirect($this->cname);
            }
            else
            {
                setFlashData('error', 'Data telah gagal ditambahkan');
                redirect($this->cname.'/add');
            }
        }
    }

    /**
     * This function is used to add new data to the system
     */
    function create_rights()
    {
        $fuid = $this->input->post('fuid', TRUE);
        $fcode = $_POST['fcode'];

        foreach($fcode as $c){
            $dataInfo = array('adminID'=>$fuid, 'modr_rights'=>$c, 'modr_active'=>1);

            $count = $this->MRights->check_data_exists(array('adminID' => $fuid, 'modr_rights' => $c));
            if ($count > 0)
            { 
                continue;
            }
            else
            { 
                $result = $this->MRights->insert_data($dataInfo);
            
                if($result > 0)
                {
                    //success
                }
                else
                {
                    //error
                }
            }
        }
        redirect($this->cname_admin_cms.'/edit/'.$fuid);
        // $result = array(
        //     'status' => TRUE
        // );
        // $output = $this->output
		// 	->set_content_type('application/json')
		// 	->set_output(json_encode($result));
		// return $output;
    }
    
    /**
     * This function is used load edit information
     * @param $fkey : Optional : This is data unique key
     */
    function edit($fkey = NULL)
    {
        if($this->isCMSAdmin()){
            if($fkey == NULL)
            {
                redirect($this->cname);
            }

            $this->global['pageTitle'] = "Edit Data Modul - ".APP_NAME;
            $this->global['pageMenu'] = 'Edit Data Modul';
            $this->global['contentHeader'] = 'Edit Data Modul';
            $this->global['contentTitle'] = 'Edit Data Modul';
            $this->global ['name'] = $this->accName;
            $this->global ['type'] = $this->accType;
            $this->global ['group'] = $this->accGroup;
            $this->global ['role'] = $this->accRole;

            $data['classname'] = $this->cname;
            $data['records'] = $this->get_edit($fkey);
            $data['arr_modul'] = $this->get_list('array');
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
        $arrWhere = array('mod_slug'=>$fkey);
        $flimit = 0;

        $rs = $this->MModule->get_data($this->security->xss_clean($arrWhere), array(), $flimit);
        
        $data = array();
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
        
        return $data;
    }
    
    /**
     * This function is used to edit the data information
     */
    function update()
    {
        $fid = $this->input->post('fid', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $ficon = $this->input->post('ficon', TRUE);
        $factive = $this->input->post('factive', TRUE);
        $fparent = $this->input->post('fparent', TRUE);

        $dataInfo = array('mod_name'=>$fname, 'mod_slug'=>$flink, 'mod_icon'=>$ficon, 'mod_active'=>$factive, 
            'mod_has_parent'=>$fparent);

        $result = $this->MModule->update_data($dataInfo, $fid);
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
        $result = $this->MModule->delete_data($fkey);

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
}