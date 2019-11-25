
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-9">
                <?php echo alert('alert-info', 'Perhatian', 'Silahkan Cheklist Pada Menu Yang Akan Diberikan Akses') ?>
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title">KELOLA HAK AKSES UNTUK LEVEL :
                            <small><b><?php echo $level['nama_level'] ?></b></small>
                        </h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <a href="<?php echo site_url('userlevel') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad">
                        <table class="table table-bordered table-hover" id="mytable">
                            <thead>
                                <tr>
                                    <th width="30px">No</th>
                                    <th>Nama Modul</th>
                                    <th width="100px">Beri Akses</th>
                                </tr>
                                <?php
                                $no = 1;
                                foreach ($menu as $m) {
                                    echo "<tr>
                                            <td>$no</td>
                                            <td>$m->title</td>
                                            <td align='center'><input type='checkbox' ".  checked_akses($this->uri->segment(3), $m->id_menu)." onClick='kasi_akses($m->id_menu)'></td>
                                        </tr>";
                                    $no++;
                                }
                                ?>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script type="text/javascript">
    function kasi_akses(id_menu){
        //alert(id_menu);
        var id_menu = id_menu;
        var level = '<?php echo $this->uri->segment(3); ?>';
        //alert(level);
        $.ajax({
            url:"<?php echo base_url()?>index.php/userlevel/kasi_akses_ajax",
            data:"id_menu=" + id_menu + "&level="+ level ,
            success: function(html)
            { 
                //load();
                //alert('sukses');
            }
        });
    }    
</script>