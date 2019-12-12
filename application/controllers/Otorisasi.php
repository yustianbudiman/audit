<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Otorisasi extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Cat_bisnis_model');
        $this->load->model('Cat_operasional_model');
        $this->load->model('Otorisasi_model');
        $this->load->model('Klasifikasi_temuan_model');
        $this->load->model('Penyimpangan_model');
        $this->load->model('Cont_environment_model');
        $this->load->model('Risk_assesment_model');
        $this->load->model('Control_activities_model');
        $this->load->model('Information_comunication_model');
        $this->load->model('Monitoring_model');
        $this->load->model('Goal_strategic_model');
        $this->load->model('User_model');
        $this->load->library('form_validation');        
        $this->load->model('Status_trx_model');
		$this->load->library('datatables');
    }
    public function index()
    {   
        $this->template->load('template','otorisasi/content_otorisasi');
    } 

    public function json_bisnis() {
        header('Content-Type: application/json');
        echo $this->Otorisasi_model->json_bisnis();
    }
    public function json_operasional() {
        header('Content-Type: application/json');
        echo $this->Otorisasi_model->json_operasional();
    }


    public function list_cat_bisnis_detail($id){
        $header=$this->Cat_bisnis_model->get_One_Header_detail($id);
        $data=[
                'one_header_detail'=>$header,
                'list_all_cat_bisnis'=>$this->Cat_bisnis_model->get_all_Cat_Bisnis($header['id_cat_bisnis_header']),
            ];
        $this->template->load('template','otorisasi/content_bisnis_list_detail',$data);
    }
    public function list_cat_operasional_detail($id){
        $header=$this->Cat_operasional_model->get_One_Header_detail($id);
        $data=[
                'one_header_detail'=>$header,
                'list_all_cat_operasional'=>$this->Cat_operasional_model->get_all_Cat_Operasional($header['id_cat_operasional_header']),
            ];
        $this->template->load('template','otorisasi/content_operasional_list_detail',$data);
    }


    public function otorisasi_read_bisnis($id) 
    {

        $row = $this->Cat_bisnis_model->get_One_Cat_Bisnis($id);
        if ($row) {
            $data = array(
                'one_cat_bisnis' => $row,
                'list_status' => $this->Status_trx_model->get_all(),
            );
            $this->template->load('template','cat_bisnis/cat_bisnis_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('otorisasi'));
        }
    }
    public function otorisasi_read_operasional($id) 
    {

        $row = $this->Cat_operasional_model->get_One_Cat_Operasional($id);
        if ($row) {
            $data = array(
                'one_cat_operasional' => $row,
                'list_status' => $this->Status_trx_model->get_all(),
            );
            $this->template->load('template','cat_operasional/cat_operasional_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('otorisasi'));
        }
    }
}