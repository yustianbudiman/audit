<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cont_environment extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Cont_environment_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','cont_environment/cont_environment_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Cont_environment_model->json();
    }

    public function read($id) 
    {
        $row = $this->Cont_environment_model->get_by_id($id);
        if ($row) {
            $data = array(
                'button' => 'View',
        		'id_environment' => $row->id_environment,
        		'nama_environment' => $row->nama_environment,
        		'keterangan' => $row->keterangan,
        		'aktif' => $row->aktif,
        		'created_date' => $row->created_date,
        		'created_ip' => $row->created_ip,
        		'created_by' => $row->created_by,
        		'updated_date' => $row->updated_date,
        		'updated_ip' => $row->updated_ip,
        		'updated_by' => $row->updated_by,
    	    );
            $this->template->load('template','cont_environment/cont_environment_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cont_environment'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('cont_environment/create_action'),
    	    'id_environment' => set_value('id_environment'),
    	    'nama_environment' => set_value('nama_environment'),
    	    'keterangan' => set_value('keterangan'),
    	    'aktif' => set_value('aktif'),
    	    'created_date' => set_value('created_date'),
    	    'created_ip' => set_value('created_ip'),
    	    'created_by' => set_value('created_by'),
    	    'updated_date' => set_value('updated_date'),
    	    'updated_ip' => set_value('updated_ip'),
    	    'updated_by' => set_value('updated_by'),
    	);
        $this->template->load('template','cont_environment/cont_environment_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'nama_environment' => $this->input->post('nama_environment',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_ip' => get_client_ip(),
                'created_by' => $this->session->userdata('id_users'),
    	    );

            $this->Cont_environment_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('cont_environment'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Cont_environment_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('cont_environment/update_action'),
        		'id_environment' => set_value('id_environment', $row->id_environment),
        		'nama_environment' => set_value('nama_environment', $row->nama_environment),
        		'keterangan' => set_value('keterangan', $row->keterangan),
        		'aktif' => set_value('aktif', $row->aktif),
    	    );
            $this->template->load('template','cont_environment/cont_environment_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cont_environment'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_environment', TRUE));
        } else {
            $data = array(
        		'nama_environment' => $this->input->post('nama_environment',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'updated_ip' => get_client_ip(),
                'updated_by' => $this->session->userdata('id_users'),
    	    );

            $this->Cont_environment_model->update($this->input->post('id_environment', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('cont_environment'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Cont_environment_model->get_by_id($id);

        if ($row) {
            $this->Cont_environment_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('cont_environment'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cont_environment'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('nama_environment', 'nama environment', 'trim|required');
    	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');

    	$this->form_validation->set_rules('id_environment', 'id_environment', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "cont_environment.xls";
        $judul = "cont_environment";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Nama Environment");
    	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created By");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

    	foreach ($this->Cont_environment_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_environment);
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

/* End of file Cont_environment.php */
/* Location: ./application/controllers/Cont_environment.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:50:37 */
/* http://harviacode.com */