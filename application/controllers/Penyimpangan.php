<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Penyimpangan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Penyimpangan_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','penyimpangan/penyimpangan_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Penyimpangan_model->json();
    }

    public function read($id) 
    {
        $row = $this->Penyimpangan_model->get_by_id($id);
        if ($row) {
            $data = array(
        		'id_penyimpangan' => $row->id_penyimpangan,
        		'nama_penyimpangan' => $row->nama_penyimpangan,
        		'keterangan' => $row->keterangan,
        		'aktif' => $row->aktif,
        		'created_date' => $row->created_date,
        		'created_ip' => $row->created_ip,
        		'created_by' => $row->created_by,
        		'updated_date' => $row->updated_date,
        		'updated_ip' => $row->updated_ip,
        		'updated_by' => $row->updated_by,
    	    );
            $this->template->load('template','penyimpangan/penyimpangan_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('penyimpangan'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('penyimpangan/create_action'),
    	    'id_penyimpangan' => set_value('id_penyimpangan'),
    	    'nama_penyimpangan' => set_value('nama_penyimpangan'),
    	    'keterangan' => set_value('keterangan'),
    	    'aktif' => set_value('aktif'),
    	    'created_date' => set_value('created_date'),
    	    'created_ip' => set_value('created_ip'),
    	    'created_by' => set_value('created_by'),
    	    'updated_date' => set_value('updated_date'),
    	    'updated_ip' => set_value('updated_ip'),
    	    'updated_by' => set_value('updated_by'),
    	);
        $this->template->load('template','penyimpangan/penyimpangan_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'nama_penyimpangan' => $this->input->post('nama_penyimpangan',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_date' => $this->input->post('created_date',TRUE),
        		'created_ip' => $this->input->post('created_ip',TRUE),
        		'created_by' => $this->input->post('created_by',TRUE),
        		'updated_date' => $this->input->post('updated_date',TRUE),
        		'updated_ip' => $this->input->post('updated_ip',TRUE),
        		'updated_by' => $this->input->post('updated_by',TRUE),
    	    );

            $this->Penyimpangan_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('penyimpangan'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Penyimpangan_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('penyimpangan/update_action'),
        		'id_penyimpangan' => set_value('id_penyimpangan', $row->id_penyimpangan),
        		'nama_penyimpangan' => set_value('nama_penyimpangan', $row->nama_penyimpangan),
        		'keterangan' => set_value('keterangan', $row->keterangan),
        		'aktif' => set_value('aktif', $row->aktif),
        		'created_date' => set_value('created_date', $row->created_date),
        		'created_ip' => set_value('created_ip', $row->created_ip),
        		'created_by' => set_value('created_by', $row->created_by),
        		'updated_date' => set_value('updated_date', $row->updated_date),
        		'updated_ip' => set_value('updated_ip', $row->updated_ip),
        		'updated_by' => set_value('updated_by', $row->updated_by),
    	    );
            $this->template->load('template','penyimpangan/penyimpangan_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('penyimpangan'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_penyimpangan', TRUE));
        } else {
            $data = array(
        		'nama_penyimpangan' => $this->input->post('nama_penyimpangan',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_date' => $this->input->post('created_date',TRUE),
        		'created_ip' => $this->input->post('created_ip',TRUE),
        		'created_by' => $this->input->post('created_by',TRUE),
        		'updated_date' => $this->input->post('updated_date',TRUE),
        		'updated_ip' => $this->input->post('updated_ip',TRUE),
        		'updated_by' => $this->input->post('updated_by',TRUE),
    	    );

            $this->Penyimpangan_model->update($this->input->post('id_penyimpangan', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('penyimpangan'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Penyimpangan_model->get_by_id($id);

        if ($row) {
            $this->Penyimpangan_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('penyimpangan'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('penyimpangan'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('nama_penyimpangan', 'nama penyimpangan', 'trim|required');
    	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');
    	$this->form_validation->set_rules('created_date', 'created date', 'trim|required');
    	$this->form_validation->set_rules('created_ip', 'created ip', 'trim|required');
    	$this->form_validation->set_rules('created_by', 'created by', 'trim|required');
    	$this->form_validation->set_rules('updated_date', 'updated date', 'trim|required');
    	$this->form_validation->set_rules('updated_ip', 'updated ip', 'trim|required');
    	$this->form_validation->set_rules('updated_by', 'updated by', 'trim|required');

    	$this->form_validation->set_rules('id_penyimpangan', 'id_penyimpangan', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "penyimpangan.xls";
        $judul = "penyimpangan";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Nama Penyimpangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created By");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

    	foreach ($this->Penyimpangan_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_penyimpangan);
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

/* End of file Penyimpangan.php */
/* Location: ./application/controllers/Penyimpangan.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:53:19 */
/* http://harviacode.com */