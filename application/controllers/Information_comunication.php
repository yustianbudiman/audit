<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Information_comunication extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Information_comunication_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','information_comunication/information_comunication_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Information_comunication_model->json();
    }

    public function read($id) 
    {
        $row = $this->Information_comunication_model->get_by_id($id);
        if ($row) {
            $data = array(
                'button' => 'View',
        		'id_information_comunication' => $row->id_information_comunication,
        		'nama_information_comunication' => $row->nama_information_comunication,
        		'keterangan' => $row->keterangan,
        		'aktif' => $row->aktif,
        		'created_date' => $row->created_date,
        		'created_ip' => $row->created_ip,
        		'created_by' => $row->created_by,
        		'updated_date' => $row->updated_date,
        		'updated_ip' => $row->updated_ip,
        		'updated_by' => $row->updated_by,
    	    );
            $this->template->load('template','information_comunication/information_comunication_read', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('information_comunication'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('information_comunication/create_action'),
    	    'id_information_comunication' => set_value('id_information_comunication'),
    	    'nama_information_comunication' => set_value('nama_information_comunication'),
    	    'keterangan' => set_value('keterangan'),
    	    'aktif' => set_value('aktif'),
    	    
    	);
        $this->template->load('template','information_comunication/information_comunication_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'nama_information_comunication' => $this->input->post('nama_information_comunication',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_ip' => get_client_ip(),
                'created_by' => $this->session->userdata('id_users'),
    	    );

            $this->Information_comunication_model->insert($data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Create Record Success'));
            redirect(site_url('information_comunication'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Information_comunication_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('information_comunication/update_action'),
        		'id_information_comunication' => set_value('id_information_comunication', $row->id_information_comunication),
        		'nama_information_comunication' => set_value('nama_information_comunication', $row->nama_information_comunication),
        		'keterangan' => set_value('keterangan', $row->keterangan),
        		'aktif' => set_value('aktif', $row->aktif),
        		
    	    );
            $this->template->load('template','information_comunication/information_comunication_form', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('information_comunication'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_information_comunication', TRUE));
        } else {
            $data = array(
        		'nama_information_comunication' => $this->input->post('nama_information_comunication',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'updated_ip' => get_client_ip(),
                'updated_by' => $this->session->userdata('id_users'),
    	    );

            $this->Information_comunication_model->update($this->input->post('id_information_comunication', TRUE), $data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Update Record Success'));
            redirect(site_url('information_comunication'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Information_comunication_model->get_by_id($id);

        if ($row) {
            $this->Information_comunication_model->delete($id);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Delete Record Success'));
            redirect(site_url('information_comunication'));
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('information_comunication'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('nama_information_comunication', 'nama information comunication', 'trim|required');
    	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');
    	

    	$this->form_validation->set_rules('id_information_comunication', 'id_information_comunication', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "information_comunication.xls";
        $judul = "information_comunication";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Nama Information Comunication");
    	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created By");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

    	foreach ($this->Information_comunication_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_information_comunication);
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

/* End of file Information_comunication.php */
/* Location: ./application/controllers/Information_comunication.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:51:00 */
/* http://harviacode.com */