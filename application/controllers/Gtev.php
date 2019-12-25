<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gtev extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Gtev_model');
        $this->load->library('datatables');
    }
    public function index(){
        $this->template->load('template','gtev/content_gtev_index');
    }

    public function json_bisnis() {
        header('Content-Type: application/json');
        echo $this->Gtev_model->json_bisnis();
    }
    public function json_operasional() {
        header('Content-Type: application/json');
        echo $this->Gtev_model->json_operasional();
    }

    public function detail($id,$cat)
    {   
        if($cat=='cat_bisnis'){
            $header=$this->Gtev_model->get_one_bisnis_header_detail($id);
            $detail=$this->Gtev_model->get_all_Cat_Bisnis($header['id_cat_bisnis_header']);
        }else{
            $header=$this->Gtev_model->get_one_operasional_header_detail($id);
            $detail=$this->Gtev_model->get_all_Cat_Operasional($header['id_cat_operasional_header']);
        }

        $data=[
                'list_gtev'=>$this->Gtev_model->get_all(),
                'list_all_cat_detail'=>$detail,
                'cat'=>$cat,
            ];
        $this->template->load('template','gtev/content_gtev',$data);
    } 
    
   
}