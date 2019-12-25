<?php
Class Auth extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');    
       $this->load->model('User_model');   
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
                    
                    $expire=$this->User_model->cek_expire($user['id_users']);
                    if($expire>=1){
                        $this->session->set_flashdata('status_login','<pre style="color:red;">Password sudah expire</pre>');
                    redirect('auth');
                    }else{
                        $this->session->set_userdata($user);
                        redirect('welcome');
                    }
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
    
    function logout($flag = null){
        // $this->session->sess_destroy();
        $array_items = array('id_users', 'id_cabang', 'id_divisi', 'nik', 'full_name', 'email', 'password', 'images', 'id_user_level', 'is_aktif', 'tgl_daftar', 'tgl_update');

        $this->session->unset_userdata($array_items);
        // print_r($flag);die();
        if($flag == "00" || $flag != null || $flag != ""){
            $this->session->set_flashdata('status_login','<pre style="color:green;">Update Success. Please relogin.!</pre>');
        }else{
            $this->session->set_flashdata('status_login','Berhasil Logout');
        }
        
        redirect('auth');
    }

    public function change_password(){
        $this->load->view('auth/content_change_password');
    }

    public function proses_change(){
        $email      = strip_tags(addslashes($this->input->post('email')));
        $password = strip_tags(addslashes($this->input->post('password',TRUE)));
        $new_password = strip_tags(addslashes($this->input->post('new_password',TRUE)));
        $conf_new_password = strip_tags(addslashes($this->input->post('conf_new_password',TRUE)));
        if($password==$new_password){
           $this->session->set_flashdata('status_login','<pre style="color:green;">Password baru tidak boleh sama</pre>');
           redirect('auth/change_password'); 
        }

        $this->db->where('email',$email);
        $users       = $this->db->get('tbl_user');
        if($users->num_rows()>0){
        $user = $users->row_array();
        if(password_verify($password,$user['password'])){
            if($new_password==$conf_new_password){
            $options        = array("cost"=>4);
            $hashPassword   = password_hash($new_password,PASSWORD_BCRYPT,$options);
            $update_expire=$this->User_model->update_expire($user['id_users'],$hashPassword);
                $this->session->set_flashdata('status_login','<pre style="color:green;">Password berhasil dirubah</pre>');
               redirect('auth'); 
            }else{
               $this->session->set_flashdata('status_login','<pre style="color:green;">Password baru tidak sama</pre>');
               redirect('auth/change_password'); 
            }
        }else{
                $this->session->set_flashdata('status_login','<pre style="color:red;">Email atau Password Anda Salah</pre>');
                redirect('auth');
            }
        }else{
            $this->session->set_flashdata('status_login','<pre style="color:green;">User tidak di temukan</pre>');
               redirect('auth/change_password'); 
        }
    }
}
