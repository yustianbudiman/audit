<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cabang_model extends CI_Model
{

    public $table = 'cabang';
    public $id = 'id_cabang';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id_cabang,kode_cabang,nama_cabang,alamat,kota,provinsi,no_telepon,kepala_cabang,keterangan,id_user_senior,aktif,created_date,created_ip,created_by,updated_date,updated_ip,updated_by');
        $this->datatables->from('cabang');
        //add this line for join
        //$this->datatables->join('table2', 'cabang.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('cabang/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
            ".anchor(site_url('cabang/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
                ".anchor(site_url('cabang/delete/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'id_cabang');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, 'ASC');
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
        $this->db->like('id_cabang', $q);
	$this->db->or_like('kode_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('alamat', $q);
	$this->db->or_like('kota', $q);
	$this->db->or_like('provinsi', $q);
	$this->db->or_like('no_telepon', $q);
	$this->db->or_like('kepala_cabang', $q);
    $this->db->or_like('keterangan', $q);
	$this->db->or_like('id_user_senior', $q);
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
        $this->db->like('id_cabang', $q);
	$this->db->or_like('kode_cabang', $q);
	$this->db->or_like('nama_cabang', $q);
	$this->db->or_like('alamat', $q);
	$this->db->or_like('kota', $q);
	$this->db->or_like('provinsi', $q);
	$this->db->or_like('no_telepon', $q);
	$this->db->or_like('kepala_cabang', $q);
    $this->db->or_like('keterangan', $q);
	$this->db->or_like('id_user_senior', $q);
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

}

/* End of file Cabang_model.php */
/* Location: ./application/models/Cabang_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:58:28 */
/* http://harviacode.com */