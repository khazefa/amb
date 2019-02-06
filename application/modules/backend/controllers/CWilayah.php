<?php
/**
 * Class CWilayah.php.
 * Desc: Class for every Wilayah function purposes
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

class CWilayah extends Back_Controller
{
    private $cname = 'backend/wilayah';
    private $cname_admin_cms = 'backend/admin-cms';
    private $view_dir = 'backend/wilayah/';
    private $readonly = TRUE;

    /**
     * This is default constructor of the class
     */
	public function __construct()
	{
		parent::__construct();
		$this->isLoggedIn();
        $this->load->model('backend/Wilayah_model','MWilayah');
        $this->readonly = FALSE;
    }

    /**
     * This function is used to load the menu index
     */
	public function index()
	{
		$this->global['pageTitle'] = 'Wilayah';
		$this->global['contentHeader'] = 'Wilayah';
		$this->global['contentTitle'] = 'Wilayah';
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
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
		$flimit = 50;
		
        //Condition
        if ($fcode != "") $arrWhere['wilayahcode'] = $fcode;
        if ($fname != "") $arrWhere['wilayahtitle'] = $fname;
        if ($flink != "") $arrWhere['wilayahurl'] = $flink;
        if ($fpublish != "") $arrWhere['wilayahpublished'] = $fpublish;
        if ($fposition != "") $arrWhere['priory'] = $fposition;

        $rs = $this->MWilayah->get_data($this->security->xss_clean($arrWhere), array('priory'=>'ASC'), $flimit);
        
        switch($type) {
            case "json":
                foreach ($rs as $r) {
                    $pid = filter_var($r['wilayahID'], FILTER_SANITIZE_NUMBER_INT);
                    $code = filter_var($r['wilayahcode'], FILTER_SANITIZE_STRING);
                    $name = filter_var($r['wilayahtitle'], FILTER_SANITIZE_STRING);
                    $link = filter_var($r['wilayahurl'], FILTER_SANITIZE_STRING);
                    $publish = filter_var($r['wilayahpublished'], FILTER_SANITIZE_NUMBER_INT);
                    $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

                    $row['code'] = $code;
                    $row['name'] = $name;
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
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/edit/").$code.'"><i class="fa fa-pencil"></i> Edit</a></li>';
                            $row['button'] .= '<li><a href="'.base_url($this->cname."/remove/").$code.'"><i class="fa fa-trash"></i> Delete</a></li>';
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
                    $pid = filter_var($r['wilayahID'], FILTER_SANITIZE_NUMBER_INT);
                    $code = filter_var($r['wilayahcode'], FILTER_SANITIZE_STRING);
                    $name = filter_var($r['wilayahtitle'], FILTER_SANITIZE_STRING);
                    $link = filter_var($r['wilayahurl'], FILTER_SANITIZE_STRING);
                    $publish = filter_var($r['wilayahpublished'], FILTER_SANITIZE_NUMBER_INT);
                    $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

                    $row['code'] = $code;
                    $row['name'] = $name;
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
        $this->global['pageTitle'] = "Tambah Wilayah - ".APP_NAME;
        $this->global['pageMenu'] = 'Tambah Wilayah';
        $this->global['contentHeader'] = 'Tambah Wilayah';
        $this->global['contentTitle'] = 'Tambah Wilayah';
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
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
        $current_date = date('Y-m-d H:i:s');
        $code = date("YmdHis", strtotime($current_date));

        $dataInfo = array('wilayahcode'=> $code, 'wilayahdatecreated'=>$current_date, 'wilayahurl'=>$flink, 
            'wilayahtitle'=>$fname, 'wilayahpublished'=>$fpublish, 'priory'=>0);
        $count = $this->MWilayah->check_data_exists(array('wilayahcode' => $fcode));
        if ($count > 0)
        { 
            setFlashData('error', 'Data sudah ada, harap isi dengan data lainnya');
            redirect($this->cname.'/add');
        }
        else
        { 
            $result = $this->MWilayah->insert_data($dataInfo);
        
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

        $this->global['pageTitle'] = "Edit Wilayah - ".APP_NAME;
        $this->global['pageMenu'] = 'Edit Wilayah';
        $this->global['contentHeader'] = 'Edit Wilayah';
        $this->global['contentTitle'] = 'Edit Wilayah';
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
        $arrWhere = array('wilayahcode'=>$fkey);
        $flimit = 0;

        $rs = $this->MWilayah->get_data($this->security->xss_clean($arrWhere), array(), $flimit);
        
        $data = array();
        foreach ($rs as $r) {
            $pid = filter_var($r['wilayahID'], FILTER_SANITIZE_NUMBER_INT);
            $code = filter_var($r['wilayahcode'], FILTER_SANITIZE_STRING);
            $name = filter_var($r['wilayahtitle'], FILTER_SANITIZE_STRING);
            $link = filter_var($r['wilayahurl'], FILTER_SANITIZE_STRING);
            $publish = filter_var($r['wilayahpublished'], FILTER_SANITIZE_NUMBER_INT);
            $position = filter_var($r['priory'], FILTER_SANITIZE_NUMBER_INT);

            $row['id'] = $pid;
            $row['code'] = $code;
            $row['name'] = $name;
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
        $fname = $this->input->post('fname', TRUE);
        $flink = $this->input->post('flink', TRUE);
        $fpublish = $this->input->post('fpublish', TRUE);
        $fposition = $this->input->post('fposition', TRUE);
        $current_date = date('Y-m-d H:i:s');
        $code = date("YmdHis", strtotime($current_date));

        $dataInfo = array('wilayahurl'=>$flink, 'wilayahtitle'=>$fname, 'wilayahpublished'=>$fpublish, 'priory'=>0);

        $result = $this->MWilayah->update_data($dataInfo, $fcode);
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
        $result = $this->MWilayah->delete_data($fkey);

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