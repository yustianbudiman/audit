<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('User_model');
        $this->load->library('form_validation');        
        $this->load->library('datatables');
        date_default_timezone_set("Asia/Bangkok");
    }

    public function index()
    {
        $this->template->load('template','user/tbl_user_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->User_model->json();
    }

    public function getEmailHP(){
        // Ambil data ID Provinsi yang dikirim via ajax post
        $id_users = $this->input->post('id_users');
        $no_hp = $this->input->post('no_hp');
        $email = $this->input->post('email');
        $sql_user = $this->db->get_where('tbl_user',array('id_users'=>$id_users));

        $notif_no_hp = "";
        $notif_email = "";

        $sql_no_hp = $this->db->get_where('tbl_user',array('no_hp'=>$no_hp))->num_rows();
        $sql_email = $this->db->get_where('tbl_user',array('email'=>$email))->num_rows();
        if($sql_user->num_rows()>0){

            $data_user = $sql_user->row();
            
            if($email == $data_user->email && $no_hp == $data_user->no_hp){
                
                $callback = array('notif_no_hp'=>$notif_no_hp, 'notif_email'=>$notif_email);
            }else{
                if($no_hp != $data_user->no_hp && $sql_no_hp > 0){
                    $notif_no_hp .= "<p style='color:red'><b>No HP sudah digunakan</b></p>";
                }

                if($email != $data_user->email && $sql_email > 0){
                    $notif_email .= "<p style='color:red'><b>Email sudah digunakan</b></p>";
                }
                $callback = array('notif_no_hp'=>$notif_no_hp, 'notif_email'=>$notif_email);
            }
        }else{
            $callback = array('notif_no_hp'=>$notif_no_hp, 'notif_email'=>$notif_email);
        }

        // Masukan variabel lists tadi ke dalam array $callback dengan index array : list_kota
        echo json_encode($callback); // konversi varibael $callback menjadi JSON
    }

    public function read($id) 
    {
        $row = $this->User_model->get_by_id($id);
        if ($row) {
            $data = array(
                'button'        => 'View',
                'id_users'      => $row->id_users,
                'nik'           => $row->nik,
                'full_name'     => $row->full_name,
                'email'         => $row->email,
                'images'        => $row->images,
                'id_user_level' => $row->id_user_level,
                'nama_level'    => $row->nama_level,
                'no_hp'         => $row->no_hp,
                'id_cabang'     => $row->id_cabang,
                'nama_cabang'   => $row->nama_cabang,
                'id_divisi'     => $row->id_divisi,
                'divisi'        => $row->divisi,
                'tgl_daftar'    => $row->tgl_daftar,
                'is_aktif'      => $row->is_aktif,
            );
            $this->template->load('template','user/tbl_user_read', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('user'));
        }
    }

    public function create() 
    {
        $data = array(
            'button'        => 'Create',
            'action'        => site_url('user/create_action'),
            'id_users'      => set_value('id_users'),
    	    'nik'           => set_value('nik'),
    	    'full_name'     => set_value('full_name'),
    	    'email'         => set_value('email'),
            'password'      => set_value('password'),
            'no_hp'         => set_value('no_hp'),
            'id_cabang'     => set_value('id_cabang'),
    	    'id_divisi'     => set_value('id_divisi'),
    	    'images'        => set_value('images'),
            'id_user_level' => set_value('id_user_level'),
    	    'is_aktif'      => set_value('is_aktif'),
    	);
        $this->template->load('template','user/tbl_user_form', $data);
    }
    
    
    public function create_action() 
    {
        $this->_rules();
        $foto = $this->upload_foto();
        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $fullname       = $this->input->post('full_name',TRUE);
            $email          = $this->input->post('email',TRUE);
            $password       = $this->input->post('password',TRUE);
            $no_hp = $this->input->post('no_hp');

            $sql_no_hp = $this->db->get_where('tbl_user',array('no_hp'=>$no_hp))->num_rows();
            $sql_email = $this->db->get_where('tbl_user',array('email'=>$email))->num_rows();
            
            // Buat variabel untuk menampung tag-tag option nya
            // Set defaultnya dengan tag option Pilih
            $notif = "";
            
            if($sql_no_hp > 0 || $sql_email > 0){
                if($sql_no_hp > 0 ){
                    $notif .= "<p style='color:white'><b>No HP sudah digunakan, </b></p>";
                }

                if($sql_email > 0){
                    $notif .= "<p style='color:white'><b>Email sudah digunakan</b></p>";
                }

                $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>$notif));
                redirect(site_url('user'));
            }
            
            $options        = array("cost"=>4);
            $hashPassword   = password_hash($password,PASSWORD_BCRYPT,$options);
            // $pin            = substr(number_format(time() * rand(),0,'',''),0,6);
            $final = date("Y-m-d H:i:s", strtotime("+1 month", date("Y-m-d H:i:s")));
            $data = array(
                'nik'           => $this->input->post('nik',TRUE),
        		'full_name'     => $fullname,
        		'email'         => $email,
        		'password'      => $hashPassword,
        		'images'        => $foto['file_name'],
                'id_cabang'     => $this->input->post('id_cabang',TRUE),
                'id_divisi'     => $this->input->post('id_divisi',TRUE),
                'id_user_level' => $this->input->post('id_user_level',TRUE),
                'no_hp'         => $this->input->post('no_hp',TRUE),
                'is_aktif'      => $this->input->post('is_aktif',TRUE),
                'tgl_daftar'    => date('Y-m-d h:i:s'),
        		'expire_date'    => $final,
    	    );

            $this->User_model->insert($data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Create Record Success. <b>Email = '.$email.', Password = '.$password.'</b>'));
            redirect(site_url('user'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->User_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button'        => 'Update',
                'action'        => site_url('user/update_action'),
                'id_users'      => set_value('id_users', $row->id_users),
        		'nik'           => set_value('nik', $row->nik),
        		'full_name'     => set_value('full_name', $row->full_name),
        		'email'         => set_value('email', $row->email),
        		'password'      => set_value('password', $row->password),
                'images'        => set_value('images', $row->images),
                'id_cabang'     => set_value('id_cabang', $row->id_cabang),
        		'id_divisi'     => set_value('id_divisi', $row->id_divisi),
                'id_user_level' => set_value('id_user_level', $row->id_user_level),
                'no_hp'         => set_value('no_hp', $row->no_hp),
        		'is_aktif'      => set_value('is_aktif', $row->is_aktif),
    	    );
            $this->template->load('template','user/tbl_user_form', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('user'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();
        $foto = $this->upload_foto();
        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_users', TRUE));
        } else {
            $id_users = $this->input->post('id_users', TRUE);
            $email = $this->input->post('email',TRUE);
            $no_hp = $this->input->post('no_hp',TRUE);
            if($foto['file_name']==''){
                $data = array(
                    'nik'           => $this->input->post('nik',TRUE),
                    'full_name'     => $this->input->post('full_name',TRUE),
                    'email'         => $email,
                    'id_cabang'     => $this->input->post('id_cabang',TRUE),
                    'id_divisi'     => $this->input->post('id_divisi',TRUE),
                    'id_user_level' => $this->input->post('id_user_level',TRUE),
                    'no_hp'         => $no_hp,
                    'is_aktif'      => $this->input->post('is_aktif',TRUE)
                );
            }else{
                $data = array(
                    'nik'           => $this->input->post('nik',TRUE),
                    'full_name'     => $this->input->post('full_name',TRUE),
                    'email'         => $email,
                    'images'        => $foto['file_name'],
                    'id_cabang'     => $this->input->post('id_cabang',TRUE),
                    'id_divisi'     => $this->input->post('id_divisi',TRUE),
                    'id_user_level' => $this->input->post('id_user_level',TRUE),
                    'no_hp'         => $no_hp,
                    'is_aktif'      => $this->input->post('is_aktif',TRUE)
                );
                
                // ubah foto profil yang aktif
                $this->session->set_userdata('images',$foto['file_name']);
            }
            $sql_user = $this->db->get_where('tbl_user',array('id_users'=>$id_users));
            // print_r($id_users);die();
            // print_r($sql_user->num_rows());die();
            $notif = "";
            if($sql_user->num_rows() > 0){

                $data_user = $sql_user->row();

                $sql_no_hp = $this->db->get_where('tbl_user',array('no_hp'=>$no_hp))->num_rows();
                $sql_email = $this->db->get_where('tbl_user',array('email'=>$email))->num_rows();

                if($email == $data_user->email && $no_hp == $data_user->no_hp){
                    //melakukan update
                    if(($no_hp != $data_user->no_hp && $sql_no_hp > 0) || ($email != $data_user->email && $sql_email > 0)){
                    
                        if($no_hp != $data_user->no_hp && $sql_no_hp > 0 ){
                            $notif .= "<p style='color:white'><b>No HP sudah digunakan, </b></p>";
                        }

                        if($email != $data_user->email && $sql_email > 0){
                            $notif .= "<p style='color:white'><b>Email sudah digunakan</b></p>";
                        }

                        $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>$notif));
                        redirect(site_url('user'));
                    }else{
                        $this->User_model->update($id_users, $data);
                        $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Update Record Success'));
                        redirect(site_url('user'));
                    }
                    
                }else{
                    
                    if(($no_hp != $data_user->no_hp && $sql_no_hp > 0) || ($email != $data_user->email && $sql_email > 0)){
                    
                        if($no_hp != $data_user->no_hp && $sql_no_hp > 0 ){
                            $notif .= "<p style='color:white'><b>No HP sudah digunakan, </b></p>";
                        }

                        if($email != $data_user->email && $sql_email > 0){
                            $notif .= "<p style='color:white'><b>Email sudah digunakan</b></p>";
                        }

                        $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>$notif));
                        redirect(site_url('user'));
                    }else{
                        $this->User_model->update($id_users, $data);
                        $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Update Record Success'));
                        redirect(site_url('user'));
                    }
                }
            }            
        }
    }
    
    
    function upload_foto(){
        $config['upload_path']          = './assets/foto_profil';
        $config['allowed_types']        = 'gif|jpg|png';
        //$config['max_size']             = 100;
        //$config['max_width']            = 1024;
        //$config['max_height']           = 768;
        $this->load->library('upload', $config);
        $this->upload->do_upload('images');
        return $this->upload->data();
    }
    
    public function delete($id) 
    {
        $row = $this->User_model->get_by_id($id);

        if ($row) {
            $this->User_model->delete($id);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Delete Record Success'));
            redirect(site_url('user'));
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('user'));
        }
    }

    public function reset($id) 
    {
        $row = $this->User_model->get_by_id($id);

        if ($row) {
            
            $password       = "Auditportal".date('Y');
            $options        = array("cost"=>4);
            $hashPassword   = password_hash($password,PASSWORD_BCRYPT,$options);
            // $pin            = substr(number_format(time() * rand(),0,'',''),0,6);
            $data = array(
                'password'    => $hashPassword
            );
            $this->User_model->update($id,$data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Reset Record Success. New password = <b>'.$password.'</b>'));
            redirect(site_url('user'));
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('user'));
        }
    }

    public function _rules() 
    {
        $this->form_validation->set_rules('nik', 'NIK', 'trim|numeric|required');
    	$this->form_validation->set_rules('full_name', 'Nama Lengkap', 'trim|required');
    	$this->form_validation->set_rules('email', 'Email', 'trim|valid_email|required');
    	//$this->form_validation->set_rules('password', 'password', 'trim|required');
    	//$this->form_validation->set_rules('images', 'images', 'trim|required');
        $this->form_validation->set_rules('id_cabang', 'Cabang', 'trim|numeric|required');
        $this->form_validation->set_rules('id_divisi', 'Divisi', 'trim|numeric|required');
    	$this->form_validation->set_rules('id_user_level', 'Level User', 'trim|numeric|required');
        $this->form_validation->set_rules('no_hp', 'No HP', 'trim|required|numeric');
    	$this->form_validation->set_rules('is_aktif', 'Status Aktif', 'trim|required');

    	$this->form_validation->set_rules('id_users', 'id_users', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_user.xls";
        $judul = "tbl_user";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
    	xlsWriteLabel($tablehead, $kolomhead++, "Full Name");
    	xlsWriteLabel($tablehead, $kolomhead++, "Email");
    	xlsWriteLabel($tablehead, $kolomhead++, "Password");
    	xlsWriteLabel($tablehead, $kolomhead++, "Images");
    	xlsWriteLabel($tablehead, $kolomhead++, "Id User Level");
    	xlsWriteLabel($tablehead, $kolomhead++, "Is Aktif");

    	foreach ($this->User_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->full_name);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->email);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->password);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->images);
    	    xlsWriteNumber($tablebody, $kolombody++, $data->id_user_level);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->is_aktif);

    	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_user.doc");

        $data = array(
            'tbl_user_data' => $this->User_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('user/tbl_user_doc',$data);
    }
    
    function profile(){
        
    }

}

/* End of file User.php */
/* Location: ./application/controllers/User.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-10-04 06:32:22 */
/* http://harviacode.com */