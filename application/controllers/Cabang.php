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
				'id_cabang' => $row->id_cabang,
				'kode_cabang' => $row->kode_cabang,
				'nama_cabang' => $row->nama_cabang,
				'alamat' => $row->alamat,
				'kota' => $row->kota,
				'provinsi' => $row->provinsi,
				'no_telepon' => $row->no_telepon,
				'kepala_cabang' => $row->kepala_cabang,
				'keterangan' => $row->keterangan,
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
            $this->session->set_flashdata('message', 'Record Not Found');
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
		    'aktif' => set_value('aktif'),
		    'created_date' => set_value('created_date'),
		    'created_ip' => set_value('created_ip'),
		    'created_by' => set_value('created_by'),
		    'updated_date' => set_value('updated_date'),
		    'updated_ip' => set_value('updated_ip'),
		    'updated_by' => set_value('updated_by'),
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
				'aktif' => $this->input->post('aktif',TRUE),
				'created_date' => $this->input->post('created_date',TRUE),
				'created_ip' => $this->input->post('created_ip',TRUE),
				'created_by' => $this->input->post('created_by',TRUE),
				'updated_date' => $this->input->post('updated_date',TRUE),
				'updated_ip' => $this->input->post('updated_ip',TRUE),
				'updated_by' => $this->input->post('updated_by',TRUE),
		    );

            $this->Cabang_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
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
				'aktif' => set_value('aktif', $row->aktif),
				'created_date' => set_value('created_date', $row->created_date),
				'created_ip' => set_value('created_ip', $row->created_ip),
				'created_by' => set_value('created_by', $row->created_by),
				'updated_date' => set_value('updated_date', $row->updated_date),
				'updated_ip' => set_value('updated_ip', $row->updated_ip),
				'updated_by' => set_value('updated_by', $row->updated_by),
		    );
            $this->template->load('template','cabang/cabang_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
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
				'aktif' => $this->input->post('aktif',TRUE),
				'created_date' => $this->input->post('created_date',TRUE),
				'created_ip' => $this->input->post('created_ip',TRUE),
				'created_by' => $this->input->post('created_by',TRUE),
				'updated_date' => $this->input->post('updated_date',TRUE),
				'updated_ip' => $this->input->post('updated_ip',TRUE),
				'updated_by' => $this->input->post('updated_by',TRUE),
		    );

            $this->Cabang_model->update($this->input->post('id_cabang', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('cabang'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Cabang_model->get_by_id($id);

        if ($row) {
            $this->Cabang_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('cabang'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
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
		$this->form_validation->set_rules('aktif', 'aktif', 'trim|required');
		$this->form_validation->set_rules('created_date', 'created date', 'trim|required');
		$this->form_validation->set_rules('created_ip', 'created ip', 'trim|required');
		$this->form_validation->set_rules('created_by', 'created by', 'trim|required');
		$this->form_validation->set_rules('updated_date', 'updated date', 'trim|required');
		$this->form_validation->set_rules('updated_ip', 'updated ip', 'trim|required');
		$this->form_validation->set_rules('updated_by', 'updated by', 'trim|required');

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