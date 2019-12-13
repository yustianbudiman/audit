<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Reporting extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Reporting_model');
        $this->load->model('Cabang_model');
    }
    public function index()
    {   
      $data=[
            'list_cabang'=>$this->Cabang_model->get_all(),
            ];
        $this->template->load('template','reporting/content_reporting',$data);
    } 
    public function cari(){
        $cabang=$this->input->post('cabang',TRUE);
        $periode=date('Y-m-d',strtotime($this->input->post('periode',TRUE)));
        $audit=$this->input->post('audit',TRUE);
        if($audit=='cat bisnis'){
            $c=$this->Reporting_model->get_all_Cat_Bisnis_byperiode($cabang,$periode);
                $id_head=(count($c)>=1? anchor(site_url('cat_bisnis/word/'.$c[0]['id_cat_bisnis']), '<i class="fa fa-file-word-o" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-warning btn-sm"'):'');
        }else{
            $c=$this->Reporting_model->get_all_Cat_operasional_byperiode($cabang,$periode);
                $id_head=(count($c)>=1? anchor(site_url('cat_operasional/word/'.$c[0]['id_cat_operasional']), '<i class="fa fa-file-word-o" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-warning btn-sm"'):'');
        }
        $data=[
                'list_audit'=>$c,
                'document'=>$id_head,
            ];
        $this->load->view('reporting/content_reporting_cari',$data);
    }

   
}