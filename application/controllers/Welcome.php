<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        // is_login();
        $this->load->model('User_model');
        $this->load->library('form_validation');        
        $this->load->library('datatables');
        date_default_timezone_set("Asia/Bangkok");
        if($this->session->userdata('id_users')==""){
            // $this->session->set_flashdata('status_login','<pre style="color:red;">Session anda habis.</pre>');
            redirect('auth');
        }
    }

    public function index() {
        $data = "";
        $this->template->load('template','welcome', $data);
    }

    public function read() 
    {
        $id = $this->session->userdata('id_users');
        $row = $this->User_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button'        => 'Update',
                'action'        => site_url('welcome/read_action'),
                'id_users'      => set_value('id_users', $row->id_users),
                'id_sekolah'    => set_value('id_sekolah', $row->id_sekolah),
                'nama_sekolah'    => set_value('nama_sekolah', $row->nama_sekolah),
                'kecamatan'    => set_value('kecamatan', $row->kecamatan),
                'full_name'     => set_value('full_name', $row->full_name),
                'email'         => set_value('email', $row->email),
                'password'      => set_value('password', $row->password),
                'images'        => set_value('images', $row->images),
                'id_user_level' => set_value('id_user_level', $row->id_user_level),
                'nama_level' => set_value('nama_level', $row->nama_level),
                'id_kecamatan'  => set_value('id_kecamatan', $row->id_kecamatan),
                'no_hp'         => set_value('no_hp', $row->no_hp),
                'is_aktif'      => set_value('is_aktif', $row->is_aktif),
            );
            $this->template->load('template','user/tbl_user_read_welcome', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('user'));
        }
    }

    public function read_action() 
    {
        $this->_rules();
        $foto = $this->upload_foto();
        if ($this->form_validation->run() == FALSE) {
            $this->read($this->input->post('id_users', TRUE));
        } else {
            $id_users = $this->input->post('id_users', TRUE);
            $email = $this->input->post('email',TRUE);
            $no_hp = $this->input->post('no_hp',TRUE);
            $password = $this->input->post('password',TRUE);
            $options        = array("cost"=>4);
            $hashPassword   = password_hash($password,PASSWORD_BCRYPT,$options);
            if($foto['file_name']==''){
                if($password == ""){
                    $data = array(
                        'id_sekolah'    => $this->input->post('id_sekolah',TRUE),
                        'full_name'     => $this->input->post('full_name',TRUE),
                        'email'         => $email,
                        'id_user_level' => $this->input->post('id_user_level',TRUE),
                        'id_kecamatan'  => $this->input->post('id_kecamatan',TRUE),
                        'no_hp'         => $no_hp,
                        'is_aktif'      => $this->input->post('is_aktif',TRUE)
                    );
                }else{
                    $data = array(
                        'id_sekolah'    => $this->input->post('id_sekolah',TRUE),
                        'full_name'     => $this->input->post('full_name',TRUE),
                        'email'         => $email,
                        'password'      => $hashPassword,
                        'id_user_level' => $this->input->post('id_user_level',TRUE),
                        'id_kecamatan'  => $this->input->post('id_kecamatan',TRUE),
                        'no_hp'         => $no_hp,
                        'is_aktif'      => $this->input->post('is_aktif',TRUE)
                    );
                }
                
            }else{
                if($password == ""){
                    $data = array(
                        'id_sekolah'    => $this->input->post('id_sekolah',TRUE),
                        'full_name'     => $this->input->post('full_name',TRUE),
                        'email'         => $email,
                        'images'        => $foto['file_name'],
                        'id_user_level' => $this->input->post('id_user_level',TRUE),
                        'id_kecamatan'  => $this->input->post('id_kecamatan',TRUE),
                        'no_hp'         => $no_hp,
                        'is_aktif'      => $this->input->post('is_aktif',TRUE)
                    );
                }else{
                    $data = array(
                        'id_sekolah'    => $this->input->post('id_sekolah',TRUE),
                        'full_name'     => $this->input->post('full_name',TRUE),
                        'email'         => $email,
                        'password'         => $hashPassword,
                        'images'        => $foto['file_name'],
                        'id_user_level' => $this->input->post('id_user_level',TRUE),
                        'id_kecamatan'  => $this->input->post('id_kecamatan',TRUE),
                        'no_hp'         => $no_hp,
                        'is_aktif'      => $this->input->post('is_aktif',TRUE)
                    );
                }
                
                
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

                        $this->session->set_flashdata('message', $notif);
                        redirect(site_url('welcome/read'));
                    }else{
                        $this->User_model->update($id_users, $data);
                        $this->session->set_flashdata('message', 'Update Record Success');
                        redirect(site_url('welcome/read'));
                    }
                    
                }else{
                    
                    if(($no_hp != $data_user->no_hp && $sql_no_hp > 0) || ($email != $data_user->email && $sql_email > 0)){
                    
                        if($no_hp != $data_user->no_hp && $sql_no_hp > 0 ){
                            $notif .= "<p style='color:white'><b>No HP sudah digunakan, </b></p>";
                        }

                        if($email != $data_user->email && $sql_email > 0){
                            $notif .= "<p style='color:white'><b>Email sudah digunakan</b></p>";
                        }

                        $this->session->set_flashdata('message', $notif);
                        redirect(site_url('welcome/read'));
                    }else{
                        $this->User_model->update($id_users, $data);
                        $this->session->set_flashdata('message', 'Update Record Success');
                        redirect(site_url('welcome/read'));
                    }
                }
            }            
        }
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

    public function _rules() 
    {
        $this->form_validation->set_rules('full_name', 'full name', 'trim|required');
        $this->form_validation->set_rules('email', 'email', 'trim|valid_email|required');
        //$this->form_validation->set_rules('password', 'password', 'trim|required');
        //$this->form_validation->set_rules('images', 'images', 'trim|required');
        $this->form_validation->set_rules('id_user_level', 'id user level', 'trim|required');
        $this->form_validation->set_rules('no_hp', 'No HP', 'trim|required|numeric');
        $this->form_validation->set_rules('is_aktif', 'is aktif', 'trim|required');

        $this->form_validation->set_rules('id_users', 'id_users', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
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

    public function form() {
        //$this->load->view('table');
        $this->template->load('template', 'form');
    }
    
    function autocomplate(){
        autocomplate_json('tbl_user', 'full_name');
    }

    function autocomplate_search(){
        autocomplate_json('tbl_menu', 'url');
    }

    function __autocomplate() {
        $this->db->like('nama_lengkap', $_GET['term']);
        $this->db->select('nama_lengkap');
        $products = $this->db->get('pegawai')->result();
        foreach ($products as $product) {
            $return_arr[] = $product->nama_lengkap;
        }

        echo json_encode($return_arr);
    }

    function pdf() {
        $this->load->library('pdf');
        $pdf = new FPDF('l', 'mm', 'A5');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 16);
        // mencetak string 
        $pdf->Cell(190, 7, 'SEKOLAH MENENGAH KEJURUSAN NEEGRI 2 LANGSA', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'DAFTAR SISWA KELAS IX JURUSAN REKAYASA PERANGKAT LUNAK', 0, 1, 'C');
        $pdf->Output();
    }

}