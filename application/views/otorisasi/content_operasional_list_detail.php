<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-solid">
                    <div class="box-header with-border">
                      <i class="fa fa-text-width"></i>

                      <h3 class="box-title">Deskripsi Cabang</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <dl class="dl-horizontal">
                        <dt>Periode</dt>
                        <dd><?php echo date('d-M-Y',strtotime($one_header_detail['periode']));?></dd>
                        <dt>Kode Cabang</dt>
                        <dd><?php echo $one_header_detail['kode_cabang'];?></dd>
                        <dt>Nama Cabang</dt>
                        <dd><?php echo $one_header_detail['nama_cabang'];?></dd>
                        <dd><?php echo $one_header_detail['alamat'];?></dd>
                        </dd>
                      </dl>
                    </div>
                    <!-- /.box-body -->
                </div>
                  <!-- /.box -->
              </div>
            <div class="col-lg-12">
                <?php if($this->session->flashdata('message')){ ?>
                                
                    <?php echo "<div class='row'>"; ?>
                    <?php echo "<div class='col-md-12'>"; ?>
                    <?php echo "<div class='alert ' style='background-color:#f24e53; color: white;'>".$this->session->flashdata('message')."</div>"; ?>
                    <?php echo "</div>"; ?>
                    <?php echo "</div>"; ?>

                <?php } ?>
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title">MANAGE
                            <small>Data CAT Operasional Detail</small>
                        </h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <a href="<?php echo site_url('welcome') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                        
                    <table class="table table-bordered table-hover" id="dteail_cat_operasional" style="font-size: 12px;">
                        <thead>
                            <tr>
                                <th style="width: 5%;text-align: center;">No</th>
                                <th style="text-align: center;">Temuan</th>
                                <th style="text-align: center;">Klasifikasi</th>
                                <th style="text-align: center;">Penyimpangan</th>
                                <th style="text-align: center;">Total Impact</th>
                                <th style="text-align: center;">Bobot Resiko</th>
                                <th style="text-align: center;">TEV</th>
                                <th style="text-align: center;">Rekomendasi</th>
                                <th style="text-align: center;">Tanggapan</th>
                                <th style="text-align: center;">Target Date</th>
                                <th style="text-align: center;">Member</th>
                                <th style="text-align: center;">Status</th>
                                <th style="width: 14%;text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach ($list_all_cat_operasional as $key) { ?>
                            <tr>
                                <td><?php echo $no;?></td>
                                <td><?php echo $key['temuan'];?></td>
                                <td><?php echo $key['nama_klasifikasi_temuan'];?></td>
                                <td><?php echo $key['nama_penyimpangan'];?></td>
                                <td style="text-align: right;"><?php echo $key['total_impact'];?></td>
                                <td>
                                    <?php if($key['bobot_resiko']=='Height'){
                                        echo '<label class="label label-danger">'.$key['bobot_resiko'].'</lable>';
                                    }else if($key['bobot_resiko']=='Moderate'){
                                        echo '<label class="label label-warning">'.$key['bobot_resiko'].'</lable>';
                                    }else{
                                        echo '<label class="label label-success">'.$key['bobot_resiko'].'</lable>';
                                    }
                                    ?>
                                </td>
                                <td style="text-align: right;"><?php echo $key['tev'];?></td>
                                <td><?php echo $key['rekomendasi'];?></td>
                                <td><?php echo $key['tanggapan_audit'];?></td>
                                <td><?php echo date('d-M-Y',strtotime($key['target_date']));?></td>
                                <td><?php echo $key['member'];?></td>
                                <td style="text-align: center;"><label class="label label-warning"><?php echo $key['status_trx'];?></label></td>
                                <td style="text-align: center;">
                                    <a href="<?php echo base_url('otorisasi/otorisasi_read_operasional/'.$key['id_cat_operasional']);?>" class="btn btn-success btn-xs btn-flat"><i class="fa fa-eye"></i> Read</a>
                                </td>
                            </tr>
                            <?php $no++; } ?>
                        </tbody>
                    
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>

<div id="ModalDelete" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Konfirmasi</h4>
      </div>
      <form class="form-horizontal" action="<?php echo base_url('cat_operasional/delete');?>" method="POST">
      <div class="modal-body">
        <p>Apkah anda yakin akan menghapus data ini</p>
        <input type="hidden" name="MD_id_cat_operasional_header" id="MD_id_cat_operasional_header">
        <input type="hidden" name="MD_id_cat_operasional" id="MD_id_cat_operasional">
      </div>
      <div class="modal-footer">
        <button type="sumbit" class="btn btn-danger">delete</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </form>
    </div>

  </div>
</div>

<script type="text/javascript">
    $(document).on('click','.hapus_cat_binis',function(){
        var id_cat_operasional_header=$(this).attr('data-id_cat_binis_header');
        var id_cat_operasional=$(this).attr('data-id_cat_binis');
        $('#MD_id_cat_operasional_header').val(id_cat_operasional_header);
        $('#MD_id_cat_operasional').val(id_cat_operasional);
    });
</script>