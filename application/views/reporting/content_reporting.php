<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-solid">
                    <div class="box-header with-border">
                      <i class="fa fa-text-width"></i>

                      <h3 class="box-title">Reporting</h3>
                    </div>
                    <!-- /.box-header -->
                    <form class="form-horizontal"> 
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-md-12 col-sm-12">
                                <label for="" class="col-lg-2 control-label">Audit</label>
                              <div class="col-lg-3">
                                <select name="audit" id="audit" class="form-control">
                                    <option value="cat bisnis">Cat Bisnis</option>
                                    <option value="cat operasional">Cat Operasional</option>
                                </select>
                              </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 col-sm-12">
                                <label for="" class="col-lg-2 control-label">Cabang</label>
                              <div class="col-lg-3">
                                <select name="cabang" id="cabang" class="form-control">
                                    <?php foreach ($list_cabang as $key ) { ?>
                                    <option value="<?php echo $key->id_cabang?>"><?php echo $key->nama_cabang?></option>
                                    <?php } ?>
                                </select>
                              </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 col-sm-12">
                                <label for="" class="col-lg-2 control-label">Periode</label>
                              <div class="col-lg-3">
                                    <input type="text" name="periode_awal" id="periode_awal" class="form-control">
                              </div>
                                <label for="" class="col-lg-1 control-label">Sampai</label>
                              <div class="col-lg-3">
                                    <input type="text" name="periode_akhir" id="periode_akhir" class="form-control">
                              </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 col-sm-12">
                                <label for="" class="col-lg-2 control-label"></label>
                              <div class="col-lg-3">
                                    <button type="button" class="btn btn-primary btn-sm btn-flat cari"><i class="fa fa-search"></i> Cari</button>
                              </div>
                            </div>
                        </div>
                    </div>
                    </form>
                    <div class="box-body pad">
                    
                    </div>
                    <!-- /.box-body -->
                </div>
                  <!-- /.box -->
              </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.cari').click(function(){
        var audit=$('#audit').val();
        var cabang=$('#cabang').val();
        var periode_awal=$('#periode_awal').val();
        var periode_akhir=$('#periode_akhir').val();
        $.ajax({
            type: "POST", // Method pengiriman data bisa dengan GET atau POST
            url: "<?php echo base_url("reporting/cari"); ?>", // Isi dengan url/path file php yang dituju
            data: {'audit': audit,'cabang':cabang,'periode_awal':periode_awal,'periode_akhir':periode_akhir}, // data yang akan dikirim ke file yang dituju
            // dataType: "json",
            // beforeSend: function(e) {
            //   if(e && e.overrideMimeType) {
            //     e.overrideMimeType("application/json;charset=UTF-8");
            //   }
            // },
            success: function(response){ // Ketika proses pengiriman berhasil
                $('.pad').html(response);

            },
            error: function (xhr, ajaxOptions, thrownError) { // Ketika ada error
              alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError); // Munculkan alert error
            }
        });
    });

     $('#periode_awal').datepicker({'dateFormat':'dd-mm-yy'});
     $('#periode_akhir').datepicker({'dateFormat':'dd-mm-yy'});
});
</script>
