<div class="content-wrapper">
  <section class="content">
    <div class="row">
      <div class="col-lg-6">
        <div class="box box-info">
          <div class="box-header">
              <h3 class="box-title"><?php echo $button ?>
                  <small>Data Status</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                  <a href="<?php echo site_url('status_trx') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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
        	    <tr><td>Status Trx</td><td><?php echo $status_trx; ?></td></tr>
        	    <tr><td>Aktif</td><td><?php echo $aktif; ?></td></tr>
        	    <tr><td></td><td><a href="<?php echo site_url('status_trx') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a>
            </table>
          </div>       
        </div>
      </div>
    </div>
  </section>
</div>