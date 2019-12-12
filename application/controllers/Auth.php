<?php
Class Auth extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');    
    }
    
    function index(){
        $this->load->view('auth/login');
    }
    
    function cheklogin(){
        $this->_rules();
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('status_login','<pre style="color:red;">Email atau Password Anda Salah</pre>');
            redirect('auth');
        } else {
            $email      = strip_tags(addslashes($this->input->post('email')));
            // $pin      = strip_tags(addslashes($this->input->post('pin')));
            //$password   = $this->input->post('password');
            $password = strip_tags(addslashes($this->input->post('password',TRUE)));
            $hashPass = password_hash($password,PASSWORD_DEFAULT);
            $test     = password_verify($password, $hashPass);
            // query chek users
            $this->db->where('email',$email);
            // $this->db->where('pin',$pin);
            //$this->db->where('password',  $test);
            $users       = $this->db->get('tbl_user');
            if($users->num_rows()>0){
                $user = $users->row_array();
                if(password_verify($password,$user['password'])){
                    // retrive user data to session
                    $this->session->set_userdata($user);
                    redirect('welcome');
                }else{
                    $this->session->set_flashdata('status_login','<pre style="color:red;">Email atau Password Anda Salah</pre>');
                    redirect('auth');
                }
            }else{
                $this->session->set_flashdata('status_login','<pre style="color:red;">Email atau Password Anda Salah</pre>');
                redirect('auth');
            }
        }
    }

    public function _rules() 
    {
       $this->form_validation->set_rules('email', 'email', 'trim|required|valid_email');
       // $this->form_validation->set_rules('pin', 'pin', 'trim|required|numeric');

       $this->form_validation->set_rules('password', 'password', 'trim|required');
       $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }
    
    function logout(){
        $this->session->sess_destroy();
        $array_items = array('id_users', 'id_cabang', 'id_divisi', 'nik', 'full_name', 'email', 'password', 'images', 'id_user_level', 'is_aktif', 'tgl_daftar', 'tgl_update');

        $this->session->unset_userdata($array_items);
        $this->session->set_flashdata('status_login','Berhasil Logout');
        redirect('auth');
    }
}
