<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Status_trx_model extends CI_Model
{

    public $table = 'status_trx';
    public $id = 'id_status';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id_status,status_trx,aktif');
        $this->datatables->from('status_trx');
        //add this line for join
        //$this->datatables->join('table2', 'status_trx.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('status_trx/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
            ".anchor(site_url('status_trx/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm'))." 
                ".anchor(site_url('status_trx/delete/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'id_status');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        // $this->db->order_by($this->id, $this->order);
        // return $this->db->get($this->table)->result();
         $sql="SELECT * from status_trx";
         if ($this->session->userdata('id_user_level')=='4') {
            $sql .=" where id_status in(1,2)";
         }
            $sql .=" order by id_status";
        $query = $this->db->query($sql);
        return $query->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id_status', $q);
	$this->db->or_like('status_trx', $q);
	$this->db->or_like('aktif', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_status', $q);
	$this->db->or_like('status_trx', $q);
	$this->db->or_like('aktif', $q);
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

/* End of file Status_trx_model.php */
/* Location: ./application/models/Status_trx_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:54:04 */
/* http://harviacode.com */