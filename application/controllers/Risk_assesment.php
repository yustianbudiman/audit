<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Risk_assesment extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Risk_assesment_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','risk_assesment/risk_assesment_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Risk_assesment_model->json();
    }

    public function read($id) 
    {
        $row = $this->Risk_assesment_model->get_by_id($id);
        if ($row) {
            $data = array(
        		'id_risk_assesment' => $row->id_risk_assesment,
        		'nama_risk_assesment' => $row->nama_risk_assesment,
        		'keterangan' => $row->keterangan,
        		'aktif' => $row->aktif,
        		'created_date' => $row->created_date,
        		'created_ip' => $row->created_ip,
        		'created_by' => $row->created_by,
        		'updated_date' => $row->updated_date,
        		'updated_ip' => $row->updated_ip,
        		'updated_by' => $row->updated_by,
    	    );
            $this->template->load('template','risk_assesment/risk_assesment_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('risk_assesment'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('risk_assesment/create_action'),
    	    'id_risk_assesment' => set_value('id_risk_assesment'),
    	    'nama_risk_assesment' => set_value('nama_risk_assesment'),
    	    'keterangan' => set_value('keterangan'),
    	    'aktif' => set_value('aktif'),
    	    'created_date' => set_value('created_date'),
    	    'created_ip' => set_value('created_ip'),
    	    'created_by' => set_value('created_by'),
    	    'updated_date' => set_value('updated_date'),
    	    'updated_ip' => set_value('updated_ip'),
    	    'updated_by' => set_value('updated_by'),
    	);
        $this->template->load('template','risk_assesment/risk_assesment_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'nama_risk_assesment' => $this->input->post('nama_risk_assesment',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_date' => $this->input->post('created_date',TRUE),
        		'created_ip' => $this->input->post('created_ip',TRUE),
        		'created_by' => $this->input->post('created_by',TRUE),
        		'updated_date' => $this->input->post('updated_date',TRUE),
        		'updated_ip' => $this->input->post('updated_ip',TRUE),
        		'updated_by' => $this->input->post('updated_by',TRUE),
    	    );

            $this->Risk_assesment_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('risk_assesment'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Risk_assesment_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('risk_assesment/update_action'),
        		'id_risk_assesment' => set_value('id_risk_assesment', $row->id_risk_assesment),
        		'nama_risk_assesment' => set_value('nama_risk_assesment', $row->nama_risk_assesment),
        		'keterangan' => set_value('keterangan', $row->keterangan),
        		'aktif' => set_value('aktif', $row->aktif),
        		'created_date' => set_value('created_date', $row->created_date),
        		'created_ip' => set_value('created_ip', $row->created_ip),
        		'created_by' => set_value('created_by', $row->created_by),
        		'updated_date' => set_value('updated_date', $row->updated_date),
        		'updated_ip' => set_value('updated_ip', $row->updated_ip),
        		'updated_by' => set_value('updated_by', $row->updated_by),
    	    );
            $this->template->load('template','risk_assesment/risk_assesment_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('risk_assesment'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_risk_assesment', TRUE));
        } else {
            $data = array(
        		'nama_risk_assesment' => $this->input->post('nama_risk_assesment',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_date' => $this->input->post('created_date',TRUE),
        		'created_ip' => $this->input->post('created_ip',TRUE),
        		'created_by' => $this->input->post('created_by',TRUE),
        		'updated_date' => $this->input->post('updated_date',TRUE),
        		'updated_ip' => $this->input->post('updated_ip',TRUE),
        		'updated_by' => $this->input->post('updated_by',TRUE),
    	    );

            $this->Risk_assesment_model->update($this->input->post('id_risk_assesment', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('risk_assesment'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Risk_assesment_model->get_by_id($id);

        if ($row) {
            $this->Risk_assesment_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('risk_assesment'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('risk_assesment'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('nama_risk_assesment', 'nama risk assesment', 'trim|required');
    	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');
    	$this->form_validation->set_rules('created_date', 'created date', 'trim|required');
    	$this->form_validation->set_rules('created_ip', 'created ip', 'trim|required');
    	$this->form_validation->set_rules('created_by', 'created by', 'trim|required');
    	$this->form_validation->set_rules('updated_date', 'updated date', 'trim|required');
    	$this->form_validation->set_rules('updated_ip', 'updated ip', 'trim|required');
    	$this->form_validation->set_rules('updated_by', 'updated by', 'trim|required');

    	$this->form_validation->set_rules('id_risk_assesment', 'id_risk_assesment', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "risk_assesment.xls";
        $judul = "risk_assesment";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Nama Risk Assesment");
    	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created By");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

    	foreach ($this->Risk_assesment_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_risk_assesment);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->keterangan);
    	    xlsWriteNumber($tablebody, $kolombody++, $data->aktif);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->created_date);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->created_ip);
    	    xlsWriteNumber($tablebody, $kolombody++, $data->created_by);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->updated_date);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->updated_ip);
    	    xlsWriteNumber($tablebody, $kolombody++, $data->updated_by);

    	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Risk_assesment.php */
/* Location: ./application/controllers/Risk_assesment.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:53:55 */
/* http://harviacode.com */