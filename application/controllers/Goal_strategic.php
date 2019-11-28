<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Goal_strategic extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Goal_strategic_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','goal_strategic/goal_strategic_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Goal_strategic_model->json();
    }

    public function read($id) 
    {
        $row = $this->Goal_strategic_model->get_by_id($id);
        if ($row) {
            $data = array(
                'button' => 'View',
        		'id_goal_strategic' => $row->id_goal_strategic,
        		'nama_goal_strategic' => $row->nama_goal_strategic,
        		'keterangan' => $row->keterangan,
        		'aktif' => $row->aktif,
        		'created_date' => $row->created_date,
        		'created_ip' => $row->created_ip,
        		'created_by' => $row->created_by,
        		'updated_date' => $row->updated_date,
        		'updated_ip' => $row->updated_ip,
        		'updated_by' => $row->updated_by,
    	    );
            $this->template->load('template','goal_strategic/goal_strategic_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('goal_strategic'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('goal_strategic/create_action'),
    	    'id_goal_strategic' => set_value('id_goal_strategic'),
    	    'nama_goal_strategic' => set_value('nama_goal_strategic'),
    	    'keterangan' => set_value('keterangan'),
    	    'aktif' => set_value('aktif'),
    	    
    	);
        $this->template->load('template','goal_strategic/goal_strategic_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
        		'nama_goal_strategic' => $this->input->post('nama_goal_strategic',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'created_ip' => get_client_ip(),
                'created_by' => $this->session->userdata('id_users'),
    	    );

            $this->Goal_strategic_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('goal_strategic'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Goal_strategic_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('goal_strategic/update_action'),
        		'id_goal_strategic' => set_value('id_goal_strategic', $row->id_goal_strategic),
        		'nama_goal_strategic' => set_value('nama_goal_strategic', $row->nama_goal_strategic),
        		'keterangan' => set_value('keterangan', $row->keterangan),
        		'aktif' => set_value('aktif', $row->aktif),
        		
    	    );
            $this->template->load('template','goal_strategic/goal_strategic_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('goal_strategic'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_goal_strategic', TRUE));
        } else {
            $data = array(
        		'nama_goal_strategic' => $this->input->post('nama_goal_strategic',TRUE),
        		'keterangan' => $this->input->post('keterangan',TRUE),
        		'aktif' => $this->input->post('aktif',TRUE),
        		'updated_ip' => get_client_ip(),
                'updated_by' => $this->session->userdata('id_users'),
    	    );

            $this->Goal_strategic_model->update($this->input->post('id_goal_strategic', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('goal_strategic'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Goal_strategic_model->get_by_id($id);

        if ($row) {
            $this->Goal_strategic_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('goal_strategic'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('goal_strategic'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('nama_goal_strategic', 'nama goal strategic', 'trim|required');
    	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
    	$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');

    	$this->form_validation->set_rules('id_goal_strategic', 'id_goal_strategic', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "goal_strategic.xls";
        $judul = "goal_strategic";
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
    	xlsWriteLabel($tablehead, $kolomhead++, "Nama Goal Strategic");
    	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
    	xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Created By");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
    	xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

    	foreach ($this->Goal_strategic_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
    	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_goal_strategic);
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

/* End of file Goal_strategic.php */
/* Location: ./application/controllers/Goal_strategic.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:50:52 */
/* http://harviacode.com */