<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cabang extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Cabang_model');
        $this->load->model('User_model');
        $this->load->library('form_validation');        
		$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','cabang/cabang_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Cabang_model->json();
    }

    public function read($id) 
    {
        $row = $this->Cabang_model->get_by_id($id);
        if ($row) {
            $data = array(
            	'button' => 'View',
				'id_cabang' => $row->id_cabang,
				'kode_cabang' => $row->kode_cabang,
				'nama_cabang' => $row->nama_cabang,
				'alamat' => $row->alamat,
				'kota' => $row->kota,
				'provinsi' => $row->provinsi,
				'no_telepon' => $row->no_telepon,
				'kepala_cabang' => $row->kepala_cabang,
                'keterangan' => $row->keterangan,
				'id_user_senior' => $row->id_user_senior,
				'aktif' => $row->aktif,
				'created_date' => $row->created_date,
				'created_ip' => $row->created_ip,
				'created_by' => $row->created_by,
				'updated_date' => $row->updated_date,
				'updated_ip' => $row->updated_ip,
				'updated_by' => $row->updated_by,
		    );
            $this->template->load('template','cabang/cabang_read', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('cabang'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('cabang/create_action'),
		    'id_cabang' => set_value('id_cabang'),
		    'kode_cabang' => set_value('kode_cabang'),
		    'nama_cabang' => set_value('nama_cabang'),
		    'alamat' => set_value('alamat'),
		    'kota' => set_value('kota'),
		    'provinsi' => set_value('provinsi'),
		    'no_telepon' => set_value('no_telepon'),
		    'kepala_cabang' => set_value('kepala_cabang'),
            'keterangan' => set_value('keterangan'),
		    'id_user_senior' => set_value('id_user_senior'),
            'aktif' => set_value('aktif'),
		    'user_senior' => $this->User_model->get_all_user_senior(),
		);
        $this->template->load('template','cabang/cabang_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
				'kode_cabang' => $this->input->post('kode_cabang',TRUE),
				'nama_cabang' => $this->input->post('nama_cabang',TRUE),
				'alamat' => $this->input->post('alamat',TRUE),
				'kota' => $this->input->post('kota',TRUE),
				'provinsi' => $this->input->post('provinsi',TRUE),
				'no_telepon' => $this->input->post('no_telepon',TRUE),
				'kepala_cabang' => $this->input->post('kepala_cabang',TRUE),
                'keterangan' => $this->input->post('keterangan',TRUE),
				'id_user_senior' => $this->input->post('id_user_senior',TRUE),
				'aktif' => $this->input->post('aktif',TRUE),	
				'created_ip' => get_client_ip(),
				'created_by' => $this->session->userdata('id_users'),
			);

            $this->Cabang_model->insert($data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Create Record Success'));
            redirect(site_url('cabang'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Cabang_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('cabang/update_action'),
				'id_cabang' => set_value('id_cabang', $row->id_cabang),
				'kode_cabang' => set_value('kode_cabang', $row->kode_cabang),
				'nama_cabang' => set_value('nama_cabang', $row->nama_cabang),
				'alamat' => set_value('alamat', $row->alamat),
				'kota' => set_value('kota', $row->kota),
				'provinsi' => set_value('provinsi', $row->provinsi),
				'no_telepon' => set_value('no_telepon', $row->no_telepon),
				'kepala_cabang' => set_value('kepala_cabang', $row->kepala_cabang),
                'keterangan' => set_value('keterangan', $row->keterangan),
				'id_user_senior' => set_value('id_user_senior', $row->id_user_senior),
				'aktif' => set_value('aktif', $row->aktif),
                'user_senior' => $this->User_model->get_all_user_senior(),
		    );
            $this->template->load('template','cabang/cabang_form', $data);
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('cabang'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_cabang', TRUE));
        } else {
            $data = array(
				'kode_cabang' => $this->input->post('kode_cabang',TRUE),
				'nama_cabang' => $this->input->post('nama_cabang',TRUE),
				'alamat' => $this->input->post('alamat',TRUE),
				'kota' => $this->input->post('kota',TRUE),
				'provinsi' => $this->input->post('provinsi',TRUE),
				'no_telepon' => $this->input->post('no_telepon',TRUE),
				'kepala_cabang' => $this->input->post('kepala_cabang',TRUE),
                'keterangan' => $this->input->post('keterangan',TRUE),
				'id_user_senior' => $this->input->post('id_user_senior',TRUE),
				'aktif' => $this->input->post('aktif',TRUE),
				'updated_ip' => get_client_ip(),
				'updated_by' => $this->session->userdata('id_users'),
		    );

            $this->Cabang_model->update($this->input->post('id_cabang', TRUE), $data);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Update Record Success'));
            redirect(site_url('cabang'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Cabang_model->get_by_id($id);

        if ($row) {
            $this->Cabang_model->delete($id);
            $this->session->set_flashdata('message', array('type'=>'alert-success','pesan'=>'Delete Record Success'));
            redirect(site_url('cabang'));
        } else {
            $this->session->set_flashdata('message', array('type'=>'alert-warning','pesan'=>'Record Not Found'));
            redirect(site_url('cabang'));
        }
    }

    public function _rules() 
    {
		$this->form_validation->set_rules('kode_cabang', 'kode cabang', 'trim|required');
		$this->form_validation->set_rules('nama_cabang', 'nama cabang', 'trim|required');
		$this->form_validation->set_rules('alamat', 'alamat', 'trim|required');
		$this->form_validation->set_rules('kota', 'kota', 'trim|required');
		$this->form_validation->set_rules('provinsi', 'provinsi', 'trim|required');
		$this->form_validation->set_rules('no_telepon', 'no telepon', 'trim|required');
		$this->form_validation->set_rules('kepala_cabang', 'kepala cabang', 'trim|required');
        $this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');
		$this->form_validation->set_rules('id_user_senior', 'User senior', 'trim|required');
		$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');

		$this->form_validation->set_rules('id_cabang', 'id_cabang', 'trim');
		$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "cabang.xls";
        $judul = "cabang";
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
		xlsWriteLabel($tablehead, $kolomhead++, "Kode Cabang");
		xlsWriteLabel($tablehead, $kolomhead++, "Nama Cabang");
		xlsWriteLabel($tablehead, $kolomhead++, "Alamat");
		xlsWriteLabel($tablehead, $kolomhead++, "Kota");
		xlsWriteLabel($tablehead, $kolomhead++, "Provinsi");
		xlsWriteLabel($tablehead, $kolomhead++, "No Telepon");
		xlsWriteLabel($tablehead, $kolomhead++, "Kepala Cabang");
		xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");
		xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
		xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
		xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
		xlsWriteLabel($tablehead, $kolomhead++, "Created By");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

		foreach ($this->Cabang_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
		    xlsWriteLabel($tablebody, $kolombody++, $data->kode_cabang);
		    xlsWriteLabel($tablebody, $kolombody++, $data->nama_cabang);
		    xlsWriteLabel($tablebody, $kolombody++, $data->alamat);
		    xlsWriteLabel($tablebody, $kolombody++, $data->kota);
		    xlsWriteLabel($tablebody, $kolombody++, $data->provinsi);
		    xlsWriteLabel($tablebody, $kolombody++, $data->no_telepon);
		    xlsWriteLabel($tablebody, $kolombody++, $data->kepala_cabang);
            xlsWriteLabel($tablebody, $kolombody++, $data->keterangan);
		    xlsWriteLabel($tablebody, $kolombody++, $data->id_user_senior);
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

/* End of file Cabang.php */
/* Location: ./application/controllers/Cabang.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:58:28 */
/* http://harviacode.com */