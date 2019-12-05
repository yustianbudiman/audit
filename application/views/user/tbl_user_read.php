
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-9">
                
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title"><?php echo $button ?>
                            <small>Data Sekolah</small>
                        </h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <a href="<?php echo site_url('user') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                        <table class="table table-bordered table-hover">
                            <?php if($images != "" || $images != null){ ?>
                                <tr><td colspan="2"><center><img src="<?php echo base_url()?>assets/foto_profil/<?php echo $images; ?>" width="200px" class="user-image"></center></td></tr>
                            <?php }else{ ?>
                                <tr><td colspan="2"><center><img src="<?php echo base_url()?>assets/foto_profil/atomix_user31.png" width="200px" class="user-image"></center></td></tr>
                            <?php } ?>
                            
                            <tr><td>NIK</td><td><?php echo strtoupper($nik); ?></td></tr>
                            <tr><td>NAMA LENGKAP</td><td><?php echo strtoupper($full_name); ?></td></tr>
                            <tr><td>EMAIL</td><td><?php echo strtoupper($email); ?></td></tr>
                            <tr><td>NO HP</td><td><?php echo strtoupper($no_hp); ?></td></tr>
                            <tr><td>CABANG</td><td><?php echo strtoupper($nama_cabang); ?></td></tr>
                            <tr><td>DIVISI</td><td><?php echo strtoupper($divisi); ?></td></tr>
                            <tr><td>TANGGAL DAFTAR</td><td><?php echo strtoupper($tgl_daftar); ?></td></tr>
                            <tr><td>LEVEL</td><td><?php echo strtoupper($nama_level); ?></td></tr>
                            <tr><td>STATUS</td><td><?php if($is_aktif == "y"){ echo "AKTIF"; }else{ echo "NONAKTIF";}; ?></td></tr>
                            <tr><td></td><td><a href="<?php echo site_url('user') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr></tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>