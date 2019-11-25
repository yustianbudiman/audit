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
                  <a href="<?php echo site_url('mapel') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                  <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fa fa-minus"></i></button>
                  <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad" style="overflow: auto;">
            <form action="<?php echo $action; ?>" method="post">
            
                <table class='table table-bordered table-hover'>        

                    <tr><td width='200'>Title <?php echo form_error('title') ?></td><td><input type="text" class="form-control" name="title" id="title" placeholder="Title" value="<?php echo $title; ?>" /></td></tr>
                    <tr><td width='200'>Url <?php echo form_error('url') ?></td><td><input type="text" class="form-control" name="url" id="url" placeholder="Url" value="<?php echo $url; ?>" /></td></tr>
                    <tr><td width='200'>Icon <?php echo form_error('icon') ?></td><td><input type="text" class="form-control" name="icon" id="icon" placeholder="Icon" value="<?php echo $icon; ?>" /></td></tr>
                    <tr><td width='200'>Is Main Menu <?php echo form_error('is_main_menu') ?></td><td>                            <select name="is_main_menu" class="form-control">
                                            <option value="0">MAIN MENU</option>
                                            <?php
                                            $menu = $this->db->get('tbl_menu')->result();
                                            foreach ($menu as $m){
                                                echo "<option value='$m->id_menu' ";
                                                echo $m->id_menu==$is_main_menu?'selected':'';
                                                echo ">".  strtoupper($m->title)."</option>";
                                            }
                                            ?>
                                        </select></td></tr>
                        <tr><td width='200'>Is Aktif <?php echo form_error('is_aktif') ?></td><td><?php echo form_dropdown('is_aktif',array('y'=>'AKTIF','n'=>'TIDAK'),$is_aktif,array('class'=>'form-control'))?></td></tr>
                    <tr><td></td><td><input type="hidden" name="id_menu" value="<?php echo $id_menu; ?>" /> 
                    <button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
                    <a href="<?php echo site_url('kelolamenu') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
                </table>
            </form>
          </div>       
          </div>
      </div>
    </div>
    </section>
</div>