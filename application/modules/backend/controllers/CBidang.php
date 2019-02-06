<?php
/**
 * Class CBidang.php.
 * Desc: Class for every Bidang function purposes
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class CBidang extends Back_Controller
{
    private $cname = 'backend/bidang';
    private $cname_admin_cms = 'backend/admin-cms';
    private $view_dir = 'backend/bidang/';
    private $readonly = TRUE;

    /**
     * This is default constructor of the class
     */
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
        $this->load->model('backend/Bidang_model','MBidang');
        $this->readonly = FALSE;
    }

    /**
     * This function is used to load the menu index
     */
	public function index()
	{
		$this->global['pageTitle'] = 'Bidang';
		$this->global['contentHeader'] = 'Bidang';
		$this->global['contentTitle'] = 'Bidang';
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
        
        $fstartdate = $this->input->post('fstartdate', TRUE);
        $fenddate = $this->input->post('fenddate', TRUE);
        $fcode = $this->input->post('fcode', TRUE);
        $fsubcode = $this->input->post('fsubcode', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $fsubname = $this->input->post('fsubname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
		$flimit = 50;
		
        //Condition
        if ($fcode != "") $arrWhere['bidangcode'] = $fcode;
        if ($fsubcode != "") $arrWhere['bidangsubcode'] = $fsubcode;
        if ($fname != "") $arrWhere['bidangtitle'] = $fname;
        if ($fsubname != "") $arrWhere['bidangsubtitle'] = $fsubname;
        if ($flink != "") $arrWhere['bidangurl'] = $flink;
        if ($fpublish != "") $arrWhere['bidangpublished'] = $fpublish;
        if ($fposition != "") $arrWhere['priory'] = $fposition;

        $rs = $this->MBidang->get_data($this->security->xss_clean($arrWhere), array('priory'=>'ASC'), $flimit);
        
        switch($type) {
            case "json":
                foreach ($rs as $r) {
                    $pid = filter_var($r['bidangID'], FILTER_SANITIZE_NUMBER_INT);
                    $code = filter_var($r['bidangcode'], FILTER_SANITIZE_STRING);
                    $subcode = filter_var($r['bidangsubcode'], FILTER_SANITIZE_STRING);
                    $name = filter_var($r['bidangtitle'], FILTER_SANITIZE_STRING);
                    $subname = filter_var($r['bidangsubtitle'], FILTER_SANITIZE_STRING);
                    $link = filter_var($r['bidangurl'], FILTER_SANITIZE_STRING);
                    $publish = filter_var($r['bidangpublished'], FILTER_SANITIZE_NUMBER_INT);
                    $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

                    $row['code'] = $code;
                    $row['subcode'] = $subcode;
                    $row['name'] = $name;
                    $row['subname'] = $subname;
                    $row['link'] = $link;
                    $row['publish'] = $publish === '1' ? 'Publish' : 'Non Publish';
                    $row['position'] = $position;
                    
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
                    $pid = filter_var($r['bidangID'], FILTER_SANITIZE_NUMBER_INT);
                    $code = filter_var($r['bidangcode'], FILTER_SANITIZE_STRING);
                    $subcode = filter_var($r['bidangsubcode'], FILTER_SANITIZE_STRING);
                    $name = filter_var($r['bidangtitle'], FILTER_SANITIZE_STRING);
                    $subname = filter_var($r['bidangsubtitle'], FILTER_SANITIZE_STRING);
                    $link = filter_var($r['bidangurl'], FILTER_SANITIZE_STRING);
                    $publish = filter_var($r['bidangpublished'], FILTER_SANITIZE_NUMBER_INT);
                    $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

                    $row['code'] = $code;
                    $row['subcode'] = $subcode;
                    $row['name'] = $name;
                    $row['subname'] = $subname;
                    $row['link'] = $link;
                    $row['publish'] = $publish;
                    $row['position'] = $position;
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
        $this->global['pageTitle'] = "Tambah Bidang - ".APP_NAME;
        $this->global['pageMenu'] = 'Tambah Bidang';
        $this->global['contentHeader'] = 'Tambah Bidang';
        $this->global['contentTitle'] = 'Tambah Bidang';
        $this->global ['name'] = $this->accName;
        $this->global ['type'] = $this->accType;
        $this->global ['group'] = $this->accGroup;
        $this->global ['role'] = $this->accRole;

        $data['classname'] = $this->cname;
        $this->digiAdminLayout($data, $this->view_dir.'create', $this->global);
    }
    
    /**
     * This function is used to add new data to the system
     */
    function create()
    {
        $fid = $this->input->post('fid', TRUE);
        $fcode = $this->input->post('fcode', TRUE);
        $fsubcode = $this->input->post('fsubcode', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $fsubname = $this->input->post('fsubname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
        $current_date = date('Y-m-d H:i:s');
        $code = date("YmdHis", strtotime($current_date));
        $subcode = date("YmdHis", strtotime($current_date."+1 hours"));

        $dataInfo = array('bidangcode'=> $code, 'bidangsubcode'=> $subcode, 'bidangdatecreated'=>$current_date, 'bidangurl'=>$flink, 
            'bidangtitle'=>$fname, 'bidangsubtitle'=>$fsubname, 'bidangpublished'=>$fpublish, 'priory'=>0);
        $count = $this->MBidang->check_data_exists(array('bidangcode' => $fcode));
        if ($count > 0)
        { 
            setFlashData('error', 'Data sudah ada, harap isi dengan data lainnya');
            redirect($this->cname.'/add');
        }
        else
        { 
            $result = $this->MBidang->insert_data($dataInfo);
        
            if($result > 0)
            {
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
     * This function is used load edit information
     * @param $fkey : Optional : This is data unique key
     */
    function edit($fkey = NULL)
    {
        if($fkey == NULL)
        {
            redirect($this->cname);
        }

        $this->global['pageTitle'] = "Edit Bidang - ".APP_NAME;
        $this->global['pageMenu'] = 'Edit Bidang';
        $this->global['contentHeader'] = 'Edit Bidang';
        $this->global['contentTitle'] = 'Edit Bidang';
        $this->global ['name'] = $this->accName;
        $this->global ['type'] = $this->accType;
        $this->global ['group'] = $this->accGroup;
        $this->global ['role'] = $this->accRole;

        $data['classname'] = $this->cname;
        $data['records'] = $this->get_edit($fkey);
        $this->digiAdminLayout($data, $this->view_dir.'edit', $this->global);
    }

    /**
     * This function is used to get list information described by function name
     */
    public function get_edit($fkey){
        $rs = array(); 
        $arrWhere = array('bidangID'=>$fkey);
        $flimit = 0;

        $rs = $this->MBidang->get_data($this->security->xss_clean($arrWhere), array(), $flimit);
        
        $data = array();
        foreach ($rs as $r) {
            $pid = filter_var($r['bidangID'], FILTER_SANITIZE_NUMBER_INT);
            $code = filter_var($r['bidangcode'], FILTER_SANITIZE_STRING);
            $subcode = filter_var($r['bidangsubcode'], FILTER_SANITIZE_STRING);
            $name = filter_var($r['bidangtitle'], FILTER_SANITIZE_STRING);
            $subname = filter_var($r['bidangsubtitle'], FILTER_SANITIZE_STRING);
            $link = filter_var($r['bidangurl'], FILTER_SANITIZE_STRING);
            $publish = filter_var($r['bidangpublished'], FILTER_SANITIZE_NUMBER_INT);
            $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

            $row['id'] = $pid;
            $row['code'] = $code;
            $row['subcode'] = $subcode;
            $row['name'] = $name;
            $row['subname'] = $subname;
            $row['link'] = $link;
            $row['publish'] = $publish;
            $row['position'] = $position;
 
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
        $fcode = $this->input->post('fcode', TRUE);
        $fsubcode = $this->input->post('fsubcode', TRUE);
        $fname = $this->input->post('fname', TRUE);
        $fsubname = $this->input->post('fsubname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
        $current_date = date('Y-m-d H:i:s');
        $code = date("YmdHis", strtotime($current_date));
        $subcode = date("YmdHis", strtotime($current_date."+1 hours"));

        $dataInfo = array('bidangsubcode'=>$subcode, 'bidangurl'=>$flink, 'bidangtitle'=>$fname, 'bidangsubtitle'=>$fsubname, 'bidangpublished'=>$fpublish, 'priory'=>0);

        $result = $this->MBidang->update_data($dataInfo, $fid);
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
        $result = $this->MBidang->delete_data($fkey);

        if($result > 0)
        {
            setFlashData('success', 'Data is successfully deleted');
        }
        else
        {
            setFlashData('error', 'Failed to delete data');
        }
        redirect($this->cname);
    }
}