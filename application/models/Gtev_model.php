<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gtev_model extends CI_Model
{

    public $table = 'v_gtev';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json_bisnis() {
        $this->datatables->select('cat_bisnis_header.id_cat_bisnis_header,periode,cabang.kode_cabang,cat_bisnis_header.nama_cabang,cat_bisnis_header.id_cabang');
        $this->datatables->from('cat_bisnis_header');
        //add this line for join
        $this->datatables->join('cabang', 'cat_bisnis_header.id_cabang = cabang.id_cabang');
        

        $this->datatables->add_column('action', anchor(site_url('gtev/detail/$1/cat_bisnis'),'<i class="fa fa-cog" aria-hidden="true"></i> Detail', array('class' => 'btn btn-success btn-xs btn-flat')), 'id_cat_bisnis_header,id_cabang,nama_cabang');
        return $this->datatables->generate();
    }

    function json_operasional() {
        $this->datatables->select('cat_operasional_header.id_cat_operasional_header,periode,cabang.kode_cabang,cat_operasional_header.nama_cabang,cat_operasional_header.id_cabang');
        $this->datatables->from('cat_operasional_header');
        //add this line for join
        $this->datatables->join('cabang', 'cat_operasional_header.id_cabang = cabang.id_cabang');
        
        $this->datatables->add_column('action', anchor(site_url('gtev/detail/$1/cat_operasional'),'<i class="fa fa-cog" aria-hidden="true"></i>  Detail', array('class' => 'btn btn-success btn-xs btn-flat')), 'id_cat_operasional_header,periode,kode_cabang,id_cabang,nama_cabang');
        return $this->datatables->generate();
    }

     function get_all()
    {
        return $this->db->get($this->table)->result_array();
    }

    function get_one_bisnis_header_detail($id){
        $sql="SELECT a.periode, b.kode_cabang,b.nama_cabang, b.alamat,a.id_cat_bisnis_header,b.id_cabang from cat_bisnis_header a inner join cabang b on a.id_cabang=b.id_cabang where a.id_cat_bisnis_header='".$id."'";
        if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    function get_one_operasional_header_detail($id){
        $sql="SELECT a.periode, b.kode_cabang,b.nama_cabang, b.alamat,a.id_cat_operasional_header,b.id_cabang from cat_operasional_header a inner join cabang b on a.id_cabang=b.id_cabang where a.id_cat_operasional_header='".$id."'";
         if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    function get_all_Cat_Bisnis($id){
        $sql="SELECT
                a.id_cat_bisnis,a.id_cat_bisnis_header, a.temuan,a.kriteria, b.nama_klasifikasi_temuan,a.dampak, c.nama_penyimpangan,a.total_impact,a.repeated,a.tev,a.bobot_resiko,a.rekomendasi,a.tanggapan_audit,a.target_date,d.status_trx,a.member,a.status,environment_value, risk_assesment_value, control_activities_value, information_comunication_value, monitoring_value, goal_strategic_value
            FROM
                cat_bisnis a
            INNER JOIN klasifikasi_temuan b ON a.klasifikasi_temuan = b.id_klasifikasi_temuan
            INNER JOIN penyimpangan c ON a.id_penyimpangan = c.id_penyimpangan
            INNER JOIN status_trx d on a.status=d.id_status
         where a.id_cat_bisnis_header='".$id."' and a.aktif='Aktif'";
        if($this->session->userdata('id_user_level')=='6'){
             $sql .=" and a.created_by='".$this->session->userdata('id_users')."'";
        }
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    function get_all_Cat_Operasional($id){
        $sql="SELECT
                a.id_cat_operasional,a.id_cat_operasional_header, a.temuan, a.kriteria, a.dampak, b.nama_klasifikasi_temuan,c.nama_penyimpangan,a.total_impact,a.repeated,a.tev,a.bobot_resiko,a.rekomendasi,a.tanggapan_audit,a.target_date,d.status_trx,a.member,a.status, environment_value, risk_assesment_value, control_activities_value, information_comunication_value, monitoring_value
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

}

/* End of file Cabang_model.php */
/* Location: ./application/models/Cabang_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-19 18:58:28 */
/* http://harviacode.com */