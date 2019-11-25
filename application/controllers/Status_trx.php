<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Status_trx extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Status_trx_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','status_trx/status_trx_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Status_trx_model->json();
    }

    public function read($id) 
    {
        $row = $this->Status_trx_model->get_by_id($id);
        if ($row) {
            $data = array(
        		'id_status' => $row->id_status,
        		'status_trx' => $row->status_trx,
        		'aktif' => $row->aktif,
    	    );
            $this->template->load('template','status_trx/status_trx_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('status_trx'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('status_trx/create_action'),
    	    'id_status' => set_value('id_status'),
    	    'status_trx' => set_value('status_trx'),
    	    'aktif' => set_value('aktif'),
    	);
        $this->template->load('template','status_trx/status_trx_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'status_trx' => $this->input->post('status_trx',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
    	    );

            $this->Status_trx_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('status_trx'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Status_trx_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('status_trx/update_action'),
        		'id_status' => set_value('id_status', $row->id_status),
        		'status_trx' => set_value('status_trx', $row->status_trx),
        		'aktif' => set_value('aktif', $row->aktif),
    	    );
            $this->template->load('template','status_trx/status_trx_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('status_trx'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_status', TRUE));
        } else {
            $data = array(
        		'status_trx' => $this->input->post('status_trx',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
    	    );

            $this->Status_trx_model->update($this->input->post('id_status', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('status_trx'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Status_trx_model->get_by_id($id);

        if ($row) {
            $this->Status_trx_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('status_trx'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('status_trx'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('status_trx', 'status trx', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');

    	$this->form_validation->set_rules('id_status', 'id_status', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "status_trx.xls";
        $judul = "status_trx";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Status Trx");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");

    	foreach ($this->Status_trx_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->status_trx);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->aktif);

    	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Status_trx.php */
/* Location: ./application/controllers/Status_trx.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:54:04 */
/* http://harviacode.com */