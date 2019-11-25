
<div class="content-wrapper">
  <section class="content">
    <div class="row">
      <div class="col-lg-6">
        <div class="box box-info">
          <div class="box-header">
              <h3 class="box-title"><?php echo $button ?>
                  <small>Data Menu</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                  <a href="<?php echo site_url('kelolamenu') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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
                <tr><td>Title</td><td><?php echo $title; ?></td></tr>
                <tr><td>Url</td><td><?php echo $url; ?></td></tr>
                <tr><td>Icon</td><td><?php echo $icon; ?></td></tr>
                <tr><td>Is Main Menu</td><td><?php echo $is_main_menu; ?></td></tr>
                <tr><td>Is Aktif</td><td><?php echo $is_aktif; ?></td></tr>
                <tr><td></td><td><a href="<?php echo site_url('kelolamenu') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr></tr>
            </table>
          </div>       
        </div>
      </div>
    </div>
  </section>
</div>
