<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cat_operasional_model extends CI_Model
{

    public $table = 'cat_operasional';
    public $id = 'id_cat_operasional';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('cat_operasional_header.id_cat_operasional_header,periode,cabang.kode_cabang,cat_operasional_header.nama_cabang,cat_operasional_header.id_cabang');
        $this->datatables->from('cat_operasional_header');
        //add this line for join
        // $this->datatables->join('cat_operasional', 'cat_operasional_header.id_cat_operasional_header = cat_operasional.id_cat_operasional_header');
         $this->datatables->join('cabang', 'cat_operasional_header.id_cabang = cabang.id_cabang');
        if($this->session->userdata('id_user_level')=='6'){
            $this->datatables->where('cat_operasional_header.created_by', $this->session->userdata('id_users'));
        }
        $this->datatables->where('cat_operasional_header.aktif', 'Aktif');
        
        $this->datatables->add_column('action', anchor(site_url('cat_operasional/list_cat_operasional_detail/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
                ".anchor(site_url('cat_operasional/delete_header/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'id_cat_operasional_header,periode,kode_cabang,id_cabang,nama_cabang');
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
        $this->db->like('id_cat_operasional', $q);
	$this->db->or_like('id_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('id_temuan', $q);
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
	$this->db->or_like('total_impact', $q);
	$this->db->or_like('likelihood', $q);
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
        $this->db->like('id_cat_operasional', $q);
	$this->db->or_like('id_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('id_temuan', $q);
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
	$this->db->or_like('total_impact', $q);
	$this->db->or_like('likelihood', $q);
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
        $this->db->where('id_cat_operasional', $id);
        $this->db->update('cat_operasional', array('aktif'=>'Nonaktif'));
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
    // get data cat operasional by id heder
    function get_by_idheader($id)
    {
        $this->db->where('id_cat_operasional_header', $id);
        return $this->db->get($this->table)->result();
    }
    // get data cat bisnis by id heder
    function cek_duplikasi_header($id_cabang,$periode)
    {
        $this->db->where(['id_cabang'=> $id_cabang,'periode'=>$periode]);
        return $this->db->get('cat_operasional_header')->num_rows();
    }
    // get data cat operasional header
    function list_cat_operasional_header($id=null)
    {
        $arr=['id_cat_operasional_header'=>$id];
        // return $this->db->get('cat_operasional_header')->row_array();
        $this->db->select('id_cat_operasional_header,periode,cat_operasional_header.id_cabang,cat_operasional_header.nama_cabang,alamat');
        $this->db->from('cat_operasional_header');
        //add this line for join
        $this->db->join('cabang', 'cat_operasional_header.id_cabang = cabang.id_cabang');
        $this->db->where($arr);
        $query=$this->db->get();
        return $query->row_array();
    }

    function list_cat_operasional_header_all()
    {
        // return $this->db->get('cat_operasional_header')->row_array();
        $this->db->select('id_cat_operasional_header,periode,cat_operasional_header.id_cabang,cat_operasional_header.nama_cabang,alamat');
        $this->db->from('cat_operasional_header');
        //add this line for join
        $this->db->join('cabang', 'cat_operasional_header.id_cabang = cabang.id_cabang');
        $query=$this->db->get();
        return $query->row_array();
    }

    function insert_header($data){
    	$this->db->insert('cat_operasional_header', $data);
    }

    function get_One_Header_detail($id){
        $sql="SELECT a.periode, b.kode_cabang,b.nama_cabang, b.alamat,a.id_cat_operasional_header,b.id_cabang from cat_operasional_header a inner join cabang b on a.id_cabang=b.id_cabang where a.id_cat_operasional_header='".$id."'";
         if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    function get_all_Cat_Operasional($id){
        $sql="SELECT
                a.id_cat_operasional,a.id_cat_operasional_header, a.temuan, a.kriteria, a.dampak, b.nama_klasifikasi_temuan,c.nama_penyimpangan,a.total_impact,a.repeated,a.tev,a.bobot_resiko,a.rekomendasi,a.tanggapan_audit,a.target_date,d.status_trx,a.member,a.status
            FROM
                cat_operasional a
            INNER JOIN klasifikasi_temuan b ON a.klasifikasi_temuan = b.id_klasifikasi_temuan
            INNER JOIN penyimpangan c ON a.id_penyimpangan = c.id_penyimpangan
            INNER JOIN status_trx d on a.status=d.id_status
         where a.id_cat_operasional_header='".$id."' and a.aktif='Aktif'";
        if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    function get_all_Cat_Operasional_word($id,$periode_awal,$periode_akhir){
        $sql="SELECT
                a.id_cat_operasional,a.id_cat_operasional_header, a.temuan, a.kriteria, a.dampak, b.nama_klasifikasi_temuan,c.nama_penyimpangan,a.total_impact,a.repeated,a.tev,a.bobot_resiko,a.rekomendasi,a.tanggapan_audit,a.target_date,d.status_trx,a.member,a.status
            FROM
                cat_operasional a
            INNER JOIN klasifikasi_temuan b ON a.klasifikasi_temuan = b.id_klasifikasi_temuan
            INNER JOIN penyimpangan c ON a.id_penyimpangan = c.id_penyimpangan
            INNER JOIN status_trx d on a.status=d.id_status
         where a.id_cat_operasional_header='".$id."' and a.aktif='Aktif' and a.tanggal_periksa BETWEEN '".$periode_awal."' and '".$periode_akhir."'";
        if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    function get_One_Cat_Operasional($id){
        $sql="SELECT * from v_cat_operasional a
         where a.id_cat_operasional='".$id."' and a.aktif='Aktif'";
        $query = $this->db->query($sql);
        return $query->row();
    }
    function get_All_Cat_Operasional_excel($id){
            $sql="SELECT * from v_cat_operasional a
             where a.id_cat_operasional_header='".$id."' and a.aktif='Aktif'";
            $query = $this->db->query($sql);
            return $query->result_array();
    }

    function save_log($data){
        $this->db->insert('log_target_date', $data);
    }

    function delete_by_id_header($id){
        $this->db->where('id_cat_operasional_header', $id);
        $this->db->update('cat_operasional_header', array('aktif'=>'Nonaktif'));
    }

    function get_by_id_header($id)
    {
        $this->db->where('id_cat_operasional_header', $id);
        return $this->db->get('cat_operasional_header')->row();
    }

}

/* End of file Cat_operasional_model.php */
/* Location: ./application/models/Cat_operasional_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:50:30 */
/* http://harviacode.com */