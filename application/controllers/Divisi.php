<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Divisi extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Divisi_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','divisi/divisi_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Divisi_model->json();
    }

    public function read($id) 
    {
        $row = $this->Divisi_model->get_by_id($id);
        if ($row) {
            $data = array(
                'button' => 'View',
        		'id_divisi' => $row->id_divisi,
        		'divisi' => $row->divisi,
        		'aktif' => $row->aktif,
    	    );
            $this->template->load('template','divisi/divisi_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('divisi'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('divisi/create_action'),
    	    'id_divisi' => set_value('id_divisi'),
    	    'divisi' => set_value('divisi'),
    	    'aktif' => set_value('aktif'),
    	);
        $this->template->load('template','divisi/divisi_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'divisi' => $this->input->post('divisi',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
    	    );

            $this->Divisi_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('divisi'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Divisi_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('divisi/update_action'),
        		'id_divisi' => set_value('id_divisi', $row->id_divisi),
        		'divisi' => set_value('divisi', $row->divisi),
        		'aktif' => set_value('aktif', $row->aktif),
    	    );
            $this->template->load('template','divisi/divisi_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('divisi'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_divisi', TRUE));
        } else {
            $data = array(
        		'divisi' => $this->input->post('divisi',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
    	    );

            $this->Divisi_model->update($this->input->post('id_divisi', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('divisi'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Divisi_model->get_by_id($id);

        if ($row) {
            $this->Divisi_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('divisi'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('divisi'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('divisi', 'divisi', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');

    	$this->form_validation->set_rules('id_divisi', 'id_divisi', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "divisi.xls";
        $judul = "divisi";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Divisi");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");

    	foreach ($this->Divisi_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->divisi);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->aktif);

    	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Divisi.php */
/* Location: ./application/controllers/Divisi.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:52:38 */
/* http://harviacode.com */