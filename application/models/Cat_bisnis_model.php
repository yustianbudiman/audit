<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cat_bisnis_model extends CI_Model
{

    public $table = 'cat_bisnis';
    public $id = 'id_cat_bisnis';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id_cat_bisnis,id_cat_bisnis_header,temuan,kriteria,dampak,id_penyimpangan,id_environment,environment_value,id_risk_assesment,risk_assesment_value,id_control_activiti,control_activiti_value,id_infomation_comunication,infomation_comunication_value,id_monitoring,monitoring_value,id_goal_stategic,goal_stategic_value,total_impact,probaly,tev,bobot_resiko,rekomendasi,tanggapan_audit,target_date,aktif,created_date,created_ip,created_by,updated_date,updated_ip,updated_by');
        $this->datatables->from('cat_bisnis');
        //add this line for join
        //$this->datatables->join('table2', 'cat_bisnis.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('cat_bisnis/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
            ".anchor(site_url('cat_bisnis/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
                ".anchor(site_url('cat_bisnis/delete/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'id_cat_bisnis');
        return $this->datatables->generate();
    }

     // datatables
    function json_cabang() {
        $this->datatables->select('id_cabang,kode_cabang,nama_cabang,alamat,kota,provinsi,no_telepon,kepala_cabang,keterangan,aktif,created_date,created_ip,created_by,updated_date,updated_ip,updated_by');
        $this->datatables->from('cabang');
        //add this line for join
        //$this->datatables->join('table2', 'cabang.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('cat_bisnis/tambah_data/$1'),'<i class="fa fa-plus" aria-hidden="true"></i> Tambah', array('class' => 'btn btn-primary btn-xs btn-flat')), 'id_cabang');
        return $this->datatables->generate();
    }


    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id_cat_bisnis', $q);
	$this->db->or_like('id_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('temuan', $q);
	$this->db->or_like('kriteria', $q);
	$this->db->or_like('dampak', $q);
	$this->db->or_like('id_penyimpangan', $q);
	$this->db->or_like('id_environment', $q);
	$this->db->or_like('environment_value', $q);
	$this->db->or_like('id_risk_assesment', $q);
	$this->db->or_like('risk_assesment_value', $q);
	$this->db->or_like('id_control_activiti', $q);
	$this->db->or_like('control_activiti_value', $q);
	$this->db->or_like('id_infomation_comunication', $q);
	$this->db->or_like('infomation_comunication_value', $q);
	$this->db->or_like('id_monitoring', $q);
	$this->db->or_like('monitoring_value', $q);
	$this->db->or_like('id_goal_stategic', $q);
	$this->db->or_like('goal_stategic_value', $q);
	$this->db->or_like('total_impact', $q);
	$this->db->or_like('probaly', $q);
	$this->db->or_like('tev', $q);
	$this->db->or_like('bobot_resiko', $q);
	$this->db->or_like('rekomendasi', $q);
	$this->db->or_like('tanggapan_audit', $q);
	$this->db->or_like('target_date', $q);
	$this->db->or_like('aktif', $q);
	$this->db->or_like('created_date', $q);
	$this->db->or_like('created_ip', $q);
	$this->db->or_like('created_by', $q);
	$this->db->or_like('updated_date', $q);
	$this->db->or_like('updated_ip', $q);
	$this->db->or_like('updated_by', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_cat_bisnis', $q);
	$this->db->or_like('id_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('temuan', $q);
	$this->db->or_like('kriteria', $q);
	$this->db->or_like('dampak', $q);
	$this->db->or_like('id_penyimpangan', $q);
	$this->db->or_like('id_environment', $q);
	$this->db->or_like('environment_value', $q);
	$this->db->or_like('id_risk_assesment', $q);
	$this->db->or_like('risk_assesment_value', $q);
	$this->db->or_like('id_control_activiti', $q);
	$this->db->or_like('control_activiti_value', $q);
	$this->db->or_like('id_infomation_comunication', $q);
	$this->db->or_like('infomation_comunication_value', $q);
	$this->db->or_like('id_monitoring', $q);
	$this->db->or_like('monitoring_value', $q);
	$this->db->or_like('id_goal_stategic', $q);
	$this->db->or_like('goal_stategic_value', $q);
	$this->db->or_like('total_impact', $q);
	$this->db->or_like('probaly', $q);
	$this->db->or_like('tev', $q);
	$this->db->or_like('bobot_resiko', $q);
	$this->db->or_like('rekomendasi', $q);
	$this->db->or_like('tanggapan_audit', $q);
	$this->db->or_like('target_date', $q);
	$this->db->or_like('aktif', $q);
	$this->db->or_like('created_date', $q);
	$this->db->or_like('created_ip', $q);
	$this->db->or_like('created_by', $q);
	$this->db->or_like('updated_date', $q);
	$this->db->or_like('updated_ip', $q);
	$this->db->or_like('updated_by', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

    //list cabang
    function list_cabang(){
        return $this->db->get('cabang')->result_array();

    }
    // list cabang one
    function list_cabang_one($id){
        $this->db->where('id_cabang', $id);
        return $this->db->get('cabang')->row_array();

    }
    // get data cat bisnis by id heder
    function get_by_idheader($id)
    {
        $this->db->where('id_cat_bisnis_header', $id);
        return $this->db->get($this->table)->result();
    }
    // get data cat bisnis header
    function list_cat_bisnis_header($id=null,$periode=null)
    {
    	$arr=['id_cabang'=>$id,'periode'=>$periode];
        $this->db->where($arr);
        return $this->db->get('cat_bisnis_header')->row_array();
    }
    function insert_header($data){
    	$this->db->insert('cat_bisnis_header', $data);
    }

}

/* End of file Cat_bisnis_model.php */
/* Location: ./application/models/Cat_bisnis_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:50:23 */
/* http://harviacode.com */