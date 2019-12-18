<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_model extends CI_Model
{

    public $table = 'tbl_user';
    public $id = 'id_users';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('a.id_users, a.*, b.nama_level');
        $this->datatables->from('tbl_user a');
        $this->datatables->join('tbl_user_level b', 'a.id_user_level = b.id_user_level');
        // $this->datatables->add_column('a.is_aktif', '$1', 'rename_string_is_aktif(a.is_aktif)');
        //add this line for join
        
        if($this->session->userdata('id_user_level') == 1){ // super admin
            $this->datatables->add_column('action',anchor(site_url('user/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'View Detail'))." 
                ".anchor(site_url('user/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'Ubah Data'))." 
                ".anchor(site_url('user/reset/$1'),'<i class="fa fa-refresh" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Anda yakin ingin mereset password dan pin data ini ?\')"')." 
                ".anchor(site_url('user/delete/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Anda yakin ingin menghapus data ini ?\')"'), 'id_users');
        }else if($this->session->userdata('id_user_level') == 2){ // admin
            $this->datatables->where('a.id_user_level !=','1');
            $this->datatables->add_column('action',anchor(site_url('user/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'View Detail'))." 
                ".anchor(site_url('user/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'Ubah Data'))." 
                ".anchor(site_url('user/reset/$1'),'<i class="fa fa-refresh" aria-hidden="true"></i>','class="btn btn-danger btn-sm" title="Reset Password" onclick="javasciprt: return confirm(\'Anda yakin ingin mereset password dan pin data ini ?\')"'), 'id_users');
        }else{ //
            $this->datatables->where('a.id_user_level !=','2');
            $this->datatables->where('a.id_user_level !=','1');
            $this->datatables->add_column('action',anchor(site_url('user/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'View Detail'))." 
                ".anchor(site_url('user/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm', 'title'=>'Ubah Data'))." 
                ".anchor(site_url('user/reset/$1'),'<i class="fa fa-refresh" aria-hidden="true"></i>','class="btn btn-danger btn-sm" title="Reset Password" onclick="javasciprt: return confirm(\'Anda yakin ingin mereset password dan pin data ini ?\')"'), 'id_users');
        }
        
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    public function getSekolahByKecamatan($id_kecamatan){
        $this->db->where('lokasi_kecamatan', $id_kecamatan);
        $result = $this->db->get('rb_sekolah')->result(); // Tampilkan semua data kota berdasarkan id provinsi
        
        return $result; 
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->select('a.*, b.nama_level, c.nama_cabang, d.divisi');
        $this->db->join('tbl_user_level b', 'a.id_user_level = b.id_user_level', 'left');
        $this->db->join('cabang c', 'a.id_cabang = c.id_cabang', 'left');
        $this->db->join('divisi d', 'a.id_divisi = d.id_divisi', 'left');
        $this->db->where('a.'.$this->id, $id);
        return $this->db->get($this->table.' a')->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('a.id_users', $q);
        $this->db->or_like('a.nik', $q);
    	$this->db->or_like('a.full_name', $q);
    	$this->db->or_like('a.email', $q);
    	$this->db->or_like('a.images', $q);
        $this->db->or_like('b.nama_level', $q);
        $this->db->or_like('a.is_aktif', $q);
    	$this->db->or_like('a.no_hp', $q);
    	$this->db->from($this->table.' a');
        $this->db->join('tbl_user_level b', 'a.id_user_level = b.id_user_level');
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('a.id_users', $q);
        $this->db->or_like('a.nik', $q);
        $this->db->or_like('a.full_name', $q);
        $this->db->or_like('a.email', $q);
        $this->db->or_like('a.images', $q);
        $this->db->or_like('b.nama_level', $q);
        $this->db->or_like('a.no_hp', $q);
        $this->db->or_like('a.is_aktif', $q);
        $this->db->join('tbl_user_level b', 'a.id_user_level = b.id_user_level');
    	$this->db->limit($limit, $start);
        return $this->db->get($this->table.' a')->result();
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

    function get_All_userBy_level($id=null){
        $this->db->select('a.*, b.nama_level, c.nama_cabang, d.divisi');
        $this->db->join('tbl_user_level b', 'a.id_user_level = b.id_user_level', 'left');
        $this->db->join('cabang c', 'a.id_cabang = c.id_cabang', 'left');
        $this->db->join('divisi d', 'a.id_divisi = d.id_divisi', 'left');
        $this->db->where_in('a.id_user_level', $id);
        return $this->db->get($this->table.' a')->result_array();
    }

    function get_all_user_senior()
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->where('id_user_level', 5);
        return $this->db->get($this->table)->result();
    }

}

/* End of file User_model.php */
/* Location: ./application/models/User_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-10-04 06:32:22 */
/* http://harviacode.com */