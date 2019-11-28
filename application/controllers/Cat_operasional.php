<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cat_operasional extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Cat_operasional_model');
        $this->load->model('Cabang_model');
        $this->load->model('Klasifikasi_temuan_model');
        $this->load->model('Penyimpangan_model');
        $this->load->model('Cont_environment_model');
        $this->load->model('Risk_assesment_model');
        $this->load->model('Control_activities_model');
        $this->load->model('Information_comunication_model');
        $this->load->model('Monitoring_model');
        $this->load->model('Goal_strategic_model');
        $this->load->library('form_validation');        
		$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','cat_operasional/cat_operasional_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Cat_operasional_model->json();
    }

    public function read($id) 
    {
        $row = $this->Cat_operasional_model->get_by_id($id);
        if ($row) {
            $data = array(
				'id_cat_operasional' => $row->id_cat_operasional,
				'id_cabang' => $row->id_cabang,
				'nama_cabang' => $row->nama_cabang,
				'id_temuan' => $row->id_temuan,
				'kriteria' => $row->kriteria,
				'dampak' => $row->dampak,
				'id_penyimpangan' => $row->id_penyimpangan,
				'id_environment' => $row->id_environment,
				'environment_value' => $row->environment_value,
				'id_risk_assesment' => $row->id_risk_assesment,
				'risk_assesment_value' => $row->risk_assesment_value,
				'id_control_activities' => $row->id_control_activities,
				'control_activities_value' => $row->control_activities_value,
				'id_information_comunication' => $row->id_information_comunication,
				'information_comunication_value' => $row->information_comunication_value,
				'id_monitoring' => $row->id_monitoring,
				'monitoring_value' => $row->monitoring_value,
				'total_impact' => $row->total_impact,
				'probaly' => $row->probaly,
				'tev' => $row->tev,
				'bobot_resiko' => $row->bobot_resiko,
				'rekomendasi' => $row->rekomendasi,
				'tanggapan_audit' => $row->tanggapan_audit,
				'target_date' => $row->target_date,
				'aktif' => $row->aktif,
				'created_date' => $row->created_date,
				'created_ip' => $row->created_ip,
				'created_by' => $row->created_by,
				'updated_date' => $row->updated_date,
				'updated_ip' => $row->updated_ip,
				'updated_by' => $row->updated_by,
		    );
            $this->template->load('template','cat_operasional/cat_operasional_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cat_operasional'));
        }
    }

    public function create() 
    {
    	$header=$this->Cat_operasional_model->list_cat_operasional_header();
 		$data=[
    		'list_cabang'=>$this->Cabang_model->get_all(),
    		'list_cat_operasional_header'=>$header,
    		'list_cat_operasional'=>$this->Cat_operasional_model->get_by_idheader($header['id_cat_operasional_header']),
    		'list_klasifikasi_temuan'=>$this->Klasifikasi_temuan_model->get_all(),
    		'list_penyimpangan'=>$this->Penyimpangan_model->get_all(),
    		'list_environment'=>$this->Cont_environment_model->get_all(),
    		'list_risk_assesment'=>$this->Risk_assesment_model->get_all(),
    		'list_control_activitieses'=>$this->Control_activities_model->get_all(),
    		'list_information_comunication'=>$this->Information_comunication_model->get_all(),
    		'list_monitoring'=>$this->Monitoring_model->get_all(),
    		'list_goal_strategic'=>$this->Goal_strategic_model->get_all(),
    	];
        $this->template->load('template','cat_operasional/cat_operasional_form', $data);
    }

    public function tambah_data_history($id,$periode){
    	$header=$this->Cat_operasional_model->list_cat_operasional_header($id,$periode);

    	$data=[
    		'list_cabang_one'=>$this->Cabang_model->get_by_id($id),
    		'list_cat_operasional_header'=>$header,
    		'list_cat_operasional'=>$this->Cat_operasional_model->get_by_idheader($header['id_cat_operasional_header']),
    		'list_klasifikasi_temuan'=>$this->Klasifikasi_temuan_model->get_all(),
    		'list_penyimpangan'=>$this->Penyimpangan_model->get_all(),
    		'list_environment'=>$this->Cont_environment_model->get_all(),
    		'list_risk_assesment'=>$this->Risk_assesment_model->get_all(),
    		'list_control_activities'=>$this->Control_activities_model->get_all(),
    		'list_information_comunication'=>$this->Information_comunication_model->get_all(),
    		'list_monitoring'=>$this->Monitoring_model->get_all(),
    		'list_goal_strategic'=>$this->Goal_strategic_model->get_all(),
    		'periode'=>$periode,
    	];
    	$this->template->load('template','cat_operasional/cat_operasional_list_input',$data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
        	$cek_dulu=$this->Cat_operasional_model->list_cat_operasional_header($this->input->post('id_cabang',TRUE),date('y-m-d',strtotime($this->input->post('periode',TRUE))));
        	if(!$cek_dulu){
        		$data_header=[
        				'id_cabang'=>$this->input->post('id_cabang',TRUE),
        				'nama_cabang'=>$this->input->post('nama_cabang',TRUE),
        				'periode'=>date('y-m-d',strtotime($this->input->post('periode',TRUE))),
        			];
        		$this->Cat_operasional_model->insert_header($data_header);
        		$idnya=$this->db->insert_id();
        	}
            $data = array(
				'id_cat_operasional_header' => ($cek_dulu==''?$idnya:$cek_dulu['id_cat_operasional_header']),
				'temuan' => $this->input->post('temuan',TRUE),
				'kriteria' => $this->input->post('kriteria',TRUE),
				'dampak' => $this->input->post('dampak',TRUE),
				'id_penyimpangan' => $this->input->post('sebab_penyimpangan',TRUE),
				'id_environment' => $this->input->post('environment',TRUE),
				'environment_value' => $this->input->post('environment_value',TRUE),
				'id_risk_assesment' => $this->input->post('risk_assesment',TRUE),
				'risk_assesment_value' => $this->input->post('risk_assesment_value',TRUE),
				'id_control_activities' => $this->input->post('control_activities',TRUE),
				'control_activities_value' => $this->input->post('control_activities_value',TRUE),
				'id_information_comunication' => $this->input->post('information_comunication',TRUE),
				'information_comunication_value' => $this->input->post('information_comunication_value',TRUE),
				'id_monitoring' => $this->input->post('monitoring',TRUE),
				'monitoring_value' => $this->input->post('monitoring_value',TRUE),
				'total_impact' => $this->input->post('total_impact',TRUE),
				'probaly' => $this->input->post('probaly',TRUE),
				'repeated' => $this->input->post('repeated',TRUE),
				'tev' => $this->input->post('tev',TRUE),
				'bobot_resiko' => $this->input->post('bobot_resiko',TRUE),
				'rekomendasi' => $this->input->post('rekomendasi',TRUE),
				'tanggapan_audit' => $this->input->post('tanggapan_audit',TRUE),
				'target_date' => $this->input->post('target_date',TRUE),
				'aktif' => $this->input->post('aktif',TRUE),
				'created_date' => $this->input->post('created_date',TRUE),
				'created_ip' => $this->input->post('created_ip',TRUE),
				'created_by' => $this->input->post('created_by',TRUE),
				'updated_date' => $this->input->post('updated_date',TRUE),
				'updated_ip' => $this->input->post('updated_ip',TRUE),
				'updated_by' => $this->input->post('updated_by',TRUE),
		    );

            $this->Cat_operasional_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('cat_operasional'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Cat_operasional_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('cat_operasional/update_action'),
				'id_cat_operasional' => set_value('id_cat_operasional', $row->id_cat_operasional),
				'temuan' => set_value('temuan', $row->id_temuan),
				'klasifikasi_temuan' => set_value('klasifikasi_temuan', $row->id_temuan),
				'kriteria' => set_value('kriteria', $row->kriteria),
				'dampak' => set_value('dampak', $row->dampak),
				'id_penyimpangan' => set_value('sebab_penyimpangan', $row->id_penyimpangan),
				'id_environment' => set_value('environment', $row->id_environment),
				'environment_value' => set_value('environment_value', $row->environment_value),
				'id_risk_assesment' => set_value('risk_assesment', $row->id_risk_assesment),
				'risk_assesment_value' => set_value('risk_assesment_value', $row->risk_assesment_value),
				'id_control_activities' => set_value('control_activities', $row->id_control_activities),
				'control_activities_value' => set_value('control_activities_value', $row->control_activities_value),
				'id_information_comunication' => set_value('information_comunication', $row->id_information_comunication),
				'information_comunication_value' => set_value('information_comunication_value', $row->information_comunication_value),
				'id_monitoring' => set_value('monitoring', $row->id_monitoring),
				'monitoring_value' => set_value('monitoring_value', $row->monitoring_value),
				'total_impact' => set_value('total_impact', $row->total_impact),
				'probaly' => set_value('probaly', $row->probaly),
				'repeated' => set_value('repeated', $row->probaly),
				'tev' => set_value('tev', $row->tev),
				'bobot_resiko' => set_value('bobot_resiko', $row->bobot_resiko),
				'rekomendasi' => set_value('rekomendasi', $row->rekomendasi),
				'tanggapan_audit' => set_value('tanggapan_audit', $row->tanggapan_audit),
				'target_date' => set_value('target_date', $row->target_date),
				'aktif' => set_value('aktif', $row->aktif),
				'created_date' => set_value('created_date', $row->created_date),
				'created_ip' => set_value('created_ip', $row->created_ip),
				'created_by' => set_value('created_by', $row->created_by),
				'updated_date' => set_value('updated_date', $row->updated_date),
				'updated_ip' => set_value('updated_ip', $row->updated_ip),
				'updated_by' => set_value('updated_by', $row->updated_by),
		    );
            $this->template->load('template','cat_operasional/cat_operasional_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cat_operasional'));
        }
    }
    
    public function update_action() 
    {
        // $this->_rules();

        // if ($this->form_validation->run() == FALSE) {
        //     $this->update($this->input->post('id_cat_operasional', TRUE));
        // } else {
        	// print_r($_POST);
        	// exit();
            $data = array(
				'temuan' => $this->input->post('temuan',TRUE),
				'klasifikasi_temuan' => $this->input->post('klasifikasi_temuan',TRUE),
				'kriteria' => $this->input->post('kriteria',TRUE),
				'dampak' => $this->input->post('dampak',TRUE),
				'id_penyimpangan' => $this->input->post('sebab_penyimpangan',TRUE),
				'id_environment' => $this->input->post('environment',TRUE),
				'environment_value' => $this->input->post('environment_value',TRUE),
				'id_risk_assesment' => $this->input->post('risk_assesment',TRUE),
				'risk_assesment_value' => $this->input->post('risk_assesment_value',TRUE),
				'id_control_activities' => $this->input->post('control_activities',TRUE),
				'control_activities_value' => $this->input->post('control_activities_value',TRUE),
				'id_information_comunication' => $this->input->post('information_comunication',TRUE),
				'information_comunication_value' => $this->input->post('information_comunication_value',TRUE),
				'id_monitoring' => $this->input->post('monitoring',TRUE),
				'monitoring_value' => $this->input->post('monitoring_value',TRUE),
				'total_impact' => $this->input->post('total_impact',TRUE),
				'probaly' => $this->input->post('probaly',TRUE),
				'repeated' => $this->input->post('repeated',TRUE),
				'tev' => $this->input->post('tev',TRUE),
				'bobot_resiko' => $this->input->post('bobot_resiko',TRUE),
				'rekomendasi' => $this->input->post('rekomendasi',TRUE),
				'tanggapan_audit' => $this->input->post('tanggapan_audit',TRUE),
				'target_date' => $this->input->post('target_date',TRUE),
				'aktif' => $this->input->post('aktif',TRUE),
				'created_date' => $this->input->post('created_date',TRUE),
				'created_ip' => $this->input->post('created_ip',TRUE),
				'created_by' => $this->input->post('created_by',TRUE),
				'updated_date' => $this->input->post('updated_date',TRUE),
				'updated_ip' => $this->input->post('updated_ip',TRUE),
				'updated_by' => $this->input->post('updated_by',TRUE),
		    );

            $this->Cat_operasional_model->update($this->input->post('id_cat_operasional', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            // redirect(site_url('cat_operasional'));
        // }
    }
    
    public function delete($id) 
    {
        $row = $this->Cat_operasional_model->get_by_id($id);

        if ($row) {
            $this->Cat_operasional_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('cat_operasional'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('cat_operasional'));
        }
    }

    public function _rules() 
    {
		$this->form_validation->set_rules('id_cabang', 'id cabang');
		$this->form_validation->set_rules('nama_cabang', 'nama cabang');
		$this->form_validation->set_rules('id_temuan', 'id temuan');
		$this->form_validation->set_rules('kriteria', 'kriteria');
		$this->form_validation->set_rules('dampak', 'dampak');
		$this->form_validation->set_rules('id_penyimpangan', 'id penyimpangan');
		$this->form_validation->set_rules('id_environment', 'id environment');
		$this->form_validation->set_rules('environment_value', 'environment value');
		$this->form_validation->set_rules('id_risk_assesment', 'id risk assesment');
		$this->form_validation->set_rules('risk_assesment_value', 'risk assesment value');
		$this->form_validation->set_rules('id_control_activities', 'id control activiti');
		$this->form_validation->set_rules('control_activities_value', 'control activiti value');
		$this->form_validation->set_rules('id_information_comunication', 'id infomation comunication');
		$this->form_validation->set_rules('information_comunication_value', 'infomation comunication value');
		$this->form_validation->set_rules('id_monitoring', 'id monitoring');
		$this->form_validation->set_rules('monitoring_value', 'monitoring value');
		$this->form_validation->set_rules('total_impact', 'total impact');
		$this->form_validation->set_rules('probaly', 'probaly');
		$this->form_validation->set_rules('tev', 'tev');
		$this->form_validation->set_rules('bobot_resiko', 'bobot resiko');
		$this->form_validation->set_rules('rekomendasi', 'rekomendasi');
		$this->form_validation->set_rules('tanggapan_audit', 'tanggapan audit');
		$this->form_validation->set_rules('target_date', 'target date');
		$this->form_validation->set_rules('aktif', 'aktif');
		$this->form_validation->set_rules('created_date', 'created date');
		$this->form_validation->set_rules('created_ip', 'created ip');
		$this->form_validation->set_rules('created_by', 'created by');
		$this->form_validation->set_rules('updated_date', 'updated date');
		$this->form_validation->set_rules('updated_ip', 'updated ip');
		$this->form_validation->set_rules('updated_by', 'updated by');

		$this->form_validation->set_rules('id_cat_operasional', 'id_cat_operasional', 'trim');
		$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "cat_operasional.xls";
        $judul = "cat_operasional";
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
		xlsWriteLabel($tablehead, $kolomhead++, "Id Cabang");
		xlsWriteLabel($tablehead, $kolomhead++, "Nama Cabang");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Temuan");
		xlsWriteLabel($tablehead, $kolomhead++, "Kriteria");
		xlsWriteLabel($tablehead, $kolomhead++, "Dampak");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Penyimpangan");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Environment");
		xlsWriteLabel($tablehead, $kolomhead++, "Environment Value");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Risk Assesment");
		xlsWriteLabel($tablehead, $kolomhead++, "Risk Assesment Value");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Control Activiti");
		xlsWriteLabel($tablehead, $kolomhead++, "Control Activiti Value");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Infomation Comunication");
		xlsWriteLabel($tablehead, $kolomhead++, "Infomation Comunication Value");
		xlsWriteLabel($tablehead, $kolomhead++, "Id Monitoring");
		xlsWriteLabel($tablehead, $kolomhead++, "Monitoring Value");
		xlsWriteLabel($tablehead, $kolomhead++, "Total Impact");
		xlsWriteLabel($tablehead, $kolomhead++, "Probaly");
		xlsWriteLabel($tablehead, $kolomhead++, "Tev");
		xlsWriteLabel($tablehead, $kolomhead++, "Bobot Resiko");
		xlsWriteLabel($tablehead, $kolomhead++, "Rekomendasi");
		xlsWriteLabel($tablehead, $kolomhead++, "Tanggapan Audit");
		xlsWriteLabel($tablehead, $kolomhead++, "Target Date");
		xlsWriteLabel($tablehead, $kolomhead++, "Aktif");
		xlsWriteLabel($tablehead, $kolomhead++, "Created Date");
		xlsWriteLabel($tablehead, $kolomhead++, "Created Ip");
		xlsWriteLabel($tablehead, $kolomhead++, "Created By");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated Date");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated Ip");
		xlsWriteLabel($tablehead, $kolomhead++, "Updated By");

		foreach ($this->Cat_operasional_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_cabang);
		    xlsWriteLabel($tablebody, $kolombody++, $data->nama_cabang);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_temuan);
		    xlsWriteLabel($tablebody, $kolombody++, $data->kriteria);
		    xlsWriteLabel($tablebody, $kolombody++, $data->dampak);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_penyimpangan);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_environment);
		    xlsWriteNumber($tablebody, $kolombody++, $data->environment_value);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_risk_assesment);
		    xlsWriteNumber($tablebody, $kolombody++, $data->risk_assesment_value);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_control_activities);
		    xlsWriteNumber($tablebody, $kolombody++, $data->control_activities_value);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_information_comunication);
		    xlsWriteNumber($tablebody, $kolombody++, $data->information_comunication_value);
		    xlsWriteNumber($tablebody, $kolombody++, $data->id_monitoring);
		    xlsWriteNumber($tablebody, $kolombody++, $data->monitoring_value);
		    xlsWriteNumber($tablebody, $kolombody++, $data->total_impact);
		    xlsWriteLabel($tablebody, $kolombody++, $data->probaly);
		    xlsWriteLabel($tablebody, $kolombody++, $data->tev);
		    xlsWriteLabel($tablebody, $kolombody++, $data->bobot_resiko);
		    xlsWriteLabel($tablebody, $kolombody++, $data->rekomendasi);
		    xlsWriteLabel($tablebody, $kolombody++, $data->tanggapan_audit);
		    xlsWriteLabel($tablebody, $kolombody++, $data->target_date);
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

/* End of file Cat_operasional.php */
/* Location: ./application/controllers/Cat_operasional.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:50:30 */
/* http://harviacode.com */