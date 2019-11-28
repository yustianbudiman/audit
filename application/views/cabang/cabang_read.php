<div class="content-wrapper">
  <section class="content">
    <div class="row">
      <div class="col-lg-6">
        <div class="box box-info">
          <div class="box-header">
              <h3 class="box-title"><?php echo $button ?>
                  <small>Data Cabang</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                  <a href="<?php echo site_url('cabang') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                  <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fa fa-minus"></i></button>
                  <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad" style="overflow: auto;">
            <table class="table table-bordered table-hover">
			    <tr><td>Kode Cabang</td><td><?php echo $kode_cabang; ?></td></tr>
			    <tr><td>Nama Cabang</td><td><?php echo $nama_cabang; ?></td></tr>
			    <tr><td>Alamat</td><td><?php echo $alamat; ?></td></tr>
			    <tr><td>Kota</td><td><?php echo $kota; ?></td></tr>
			    <tr><td>Provinsi</td><td><?php echo $provinsi; ?></td></tr>
			    <tr><td>No Telepon</td><td><?php echo $no_telepon; ?></td></tr>
			    <tr><td>Kepala Cabang</td><td><?php echo $kepala_cabang; ?></td></tr>
			    <tr><td>Keterangan</td><td><?php echo $keterangan; ?></td></tr>
			    <tr><td>Aktif</td><td><?php echo $aktif; ?></td></tr>
			    <tr><td>Created Date</td><td><?php echo $created_date; ?></td></tr>
			    <tr><td>Created Ip</td><td><?php echo $created_ip; ?></td></tr>
			    <tr><td>Created By</td><td><?php echo $created_by; ?></td></tr>
			    <tr><td>Updated Date</td><td><?php echo $updated_date; ?></td></tr>
			    <tr><td>Updated Ip</td><td><?php echo $updated_ip; ?></td></tr>
			    <tr><td>Updated By</td><td><?php echo $updated_by; ?></td></tr>
	    		<tr><td></td><td><a href="<?php echo site_url('cabang') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a>
            </table>
          </div>       
        </div>
      </div>
    </div>
  </section>
</div>
