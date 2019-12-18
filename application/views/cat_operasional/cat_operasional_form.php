<link rel="stylesheet" href="<?php echo base_url('assets/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') ?>">
<div class="content-wrapper">
    <section class="content">
        <div class="row">
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
                            <small>Data CAT Bisnis</small>
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
                    <form class="form-horizontal" action="<?php echo $action;?>" method="POST">
                    <div class="box-body pad">
                        <div style="padding-bottom: 10px;">
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12">
                                    <label for="" class="col-lg-2 control-label">Id Cabang: </label>
                                  <div class="col-lg-4">
                                    <select class="form-control" name="id_cabang" id="id_cabang" <?php echo($id_cat_operasional_header!=''?'readonly':'') ?>>
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_cabang as $key) { ?>
                                        <option value="<?php echo $key->id_cabang; ?>" data-nama_cabang='<?php echo $key->nama_cabang; ?>' data-alamat='<?php echo $key->alamat; ?>' <?php echo ($id_cabang==$key->id_cabang?'selected':'')  ?>><?php echo $key->nama_cabang; ?></option>
                                        <?php } ?>
                                    </select>
                                     <?php echo form_error('id_cabang') ?>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12">
                                    <label for="" class="col-lg-2 control-label">Nama Cabang:</label>
                                  <div class="col-lg-4">
                                    <input type="text" name="nama_cabang" id="nama_cabang" value="<?php echo $nama_cabang  ?>" class="form-control" <?php echo($id_cat_operasional_header!=''?'readonly':'') ?>>
                                    <?php echo form_error('nama_cabang') ?>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12">
                                    <label for="" class="col-lg-2 control-label">Alamat:</label>
                                  <div class="col-lg-4">
                                    <input type="text" name="alamat_cabang" id="alamat_cabang" value="<?php  echo $alamat_cabang ?>" class="form-control" <?php echo($id_cat_operasional_header!=''?'readonly':'') ?>>
                                  </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12 col-sm-12">
                                    <label for="" class="col-lg-2 control-label">Periode:</label>
                                  <div class="col-lg-2">
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                        <input type="text" name="periode" id="periode" value="<?php echo $periode  ?>" class="form-control" <?php echo (form_error('periode')!=''?'style="border-color:red;"':'') ?> <?php echo($id_cat_operasional_header!=''?'readonly':'') ?>>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                        <hr></hr>
                        <div class="box-body">
                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Temuan</label>
                                  <div class="col-lg-9">
                                     <input type="text" name="temuan" id="temuan" value="<?php echo $temuan  ?>" class="form-control">
                                     <input type="hidden" name="id_cat_operasional" id="id_cat_operasional" value="<?php echo $id_cat_operasional  ?>" class="form-control">
                                    <input type="hidden" name="id_cat_operasional_header" id="id_cat_operasional_header" value="<?php echo $id_cat_operasional_header  ?>" class="form-control">
                                     <?php echo form_error('temuan') ?>
                                  </div>
                                </div>
                           
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Klasifikasi Temuan</label>
                                  <div class="col-lg-9">
                                    <select class="form-control select2" name="klasifikasi_temuan" id="klasifikasi_temuan">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_klasifikasi_temuan as $key) { ?>
                                        <option value="<?php echo $key->id_klasifikasi_temuan; ?>"  <?php echo ($klasifikasi_temuan ==$key->id_klasifikasi_temuan?'selected':'')  ?>><?php echo $key->nama_klasifikasi_temuan; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Kriteria</label>
                                  <div class="col-lg-9">
                                     <input type="text" name="kriteria" id="kriteria" value="<?php echo $kriteria  ?>" class="form-control">
                                     <?php echo form_error('kriteria') ?>
                                  </div>
                                </div>
                           
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Dampak</label>
                                  <div class="col-lg-9">
                                     <input type="text" name="dampak" id="dampak" value="<?php echo $dampak  ?>" class="form-control">
                                     <?php echo form_error('dampak') ?>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Penyimpangan</label>
                                  <div class="col-lg-9">
                                    <select class="form-control select2" name="penyimpangan" id="penyimpangan">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_penyimpangan as $key) { ?>
                                        <option value="<?php echo $key->id_penyimpangan; ?>" <?php echo ($penyimpangan==$key->id_penyimpangan?'selected':'')  ?> ><?php echo $key->nama_penyimpangan; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                                </div>
                           
                                <div class="col-md-6 col-sm-6">
                                  
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Environment</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2" name="environment" id="environment">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_environment as $key) { ?>
                                        <option value="<?php echo $key->id_environment; ?>" <?php echo ($environment==$key->id_environment?'selected':'')  ?> ><?php echo $key->nama_environment; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                                
                                    <label for="" class="col-lg-2 control-label">impact</label>
                                  <div class="col-lg-2">
                                     <input type="number" name="environment_value" id="environment_value" value="<?php echo $environment_value ?>" class="form-control" min='0' max="5" <?php echo (form_error('environment_value')!=''?'style="border-color:red;"':'') ?> >
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Risk Assesment</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2" name="risk_assesment" id="risk_assesment">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_risk_assesment as $key) { ?>
                                        <option value="<?php echo $key->id_risk_assesment; ?>" <?php echo ($risk_assesment==$key->id_risk_assesment?'selected':'')  ?> ><?php echo $key->nama_risk_assesment; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                               
                                    <label for="" class="col-lg-2 control-label">impact</label>
                                  <div class="col-lg-2">
                                     <input type="number" name="risk_assesment_value" id="risk_assesment_value" value="<?php echo $risk_assesment_value ?>" class="form-control" min='0' max="5" <?php echo (form_error('risk_assesment_value')!=''?'style="border-color:red;"':'') ?> >
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Control Activity</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2" name="control_activity" id="control_activity">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_control_activities as $key) { ?>
                                        <option value="<?php echo $key->id_control_activities; ?>" <?php echo ($control_activity==$key->id_control_activities?'selected':'')  ?> ><?php echo $key->nama_control_activities; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                                
                                    <label for="" class="col-lg-2 control-label">impact</label>
                                  <div class="col-lg-2">
                                     <input type="number" name="control_activity_value" id="control_activity_value" value="<?php echo $control_activity_value; ?>" class="form-control" min='0' max="5" <?php echo (form_error('control_activity_value')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Inf. Comunication</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2" name="information_comunication" id="information_comunication">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_information_comunication as $key) { ?>
                                        <option value="<?php echo $key->id_information_comunication; ?>" <?php echo ($information_comunication==$key->id_information_comunication?'selected':'')  ?> ><?php echo $key->nama_information_comunication; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                               
                                    <label for="" class="col-lg-2 control-label">impact</label>
                                  <div class="col-lg-2">
                                     <input type="number" name="information_comunication_value" id="information_comunication_value" value="<?php echo $information_comunication_value ?>" class="form-control" min='0' max="5" <?php echo (form_error('information_comunication_value')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Monitoring</label>
                                  <div class="col-lg-5">
                                    <select class="form-control select2" name="monitoring" id="monitoring">
                                        <option value="">--Pilih--</option>
                                        <?php foreach ($list_monitoring as $key) { ?>
                                        <option value="<?php echo $key->id_monitoring; ?>" <?php echo ($monitoring==$key->id_monitoring?'selected':'')  ?> ><?php echo $key->nama_monitoring; ?></option>
                                        <?php } ?>
                                    </select>
                                  </div>
                                
                                    <label for="" class="col-lg-2 control-label">impact</label>
                                  <div class="col-lg-2">
                                     <input type="number" name="monitoring_value" id="monitoring_value" value="<?php echo $monitoring_value ?>" class="form-control" min='0' max="5" <?php echo (form_error('monitoring_value')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                          
                            </div>
                            </div>


                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Total Impact</label>
                                  <div class="col-lg-3">
                                     <input type="text" name="total_impact" id="total_impact" value="<?php echo $total_impact ?>" class="form-control" readonly="readonly" <?php echo (form_error('total_impact')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                
                                    <label for="" class="col-lg-3 control-label">Likelihood</label>
                                  <div class="col-lg-3">
                                     <select name="likelihood" id="likelihood" class="form-control" <?php echo (form_error('likelihood')!=''?'style="border-color:red;"':'') ?>>
                                        <option value="">Pilih</option>
                                        <option value="0.2" <?php echo ($likelihood=='0.2'?'selected':'')  ?>>0.2</option>
                                        <option value="0.4" <?php echo ($likelihood=='0.4'?'selected':'')  ?>>0.4</option>
                                        <option value="0.6" <?php echo ($likelihood=='0.6'?'selected':'')  ?>>0.6</option>
                                        <option value="0.8" <?php echo ($likelihood=='0.8'?'selected':'')  ?>>0.8</option>
                                        <option value="1" <?php echo ($likelihood=='1'?'selected':'')  ?>>1</option>
                                    </select>
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Repeated</label>
                                  <div class="col-lg-3">
                                    <select name="repeated" id="repeated" class="form-control">
                                       <option value="">--Pilih--</option>
                                       <option value="Yes">Yes</option>
                                       <option value="No">No</option>
                                   </select>
                                  </div>
                               
                                    <label for="" class="col-lg-3 control-label">TEV</label>
                                  <div class="col-lg-3">
                                     <input type="text" name="tev" id="tev" value="<?php echo $tev  ?>" readonly="readonly" class="form-control" <?php echo (form_error('tev')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Bobot Resiko</label>
                                  <div class="col-lg-3">
                                     <input type="text" name="bobot_resiko" id="bobot_resiko" value="<?php echo $bobot_resiko  ?>" readonly="readonly" class="form-control" <?php echo (form_error('bobot_resiko')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Rekomendasi</label>
                                  <div class="col-lg-8">
                                     <textarea name="rekomendasi" id="rekomendasi" class="form-control" style="width: 408px;"><?php echo $rekomendasi  ?></textarea>
                                  </div>
                               
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Tanggapan Audit</label>
                                  <div class="col-lg-3">
                                    <textarea name="tanggapan_audit" id="tanggapan_audit" class="form-control" style="width: 408px;"><?php echo $tanggapan_audit  ?></textarea>
                                  </div>
                                </div>
                                
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Pemeriksaan Awal</label>
                                  <div class="col-lg-4">
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                        <input type="text" name="tanggal_periksa" id="tanggal_periksa" value="<?php echo $tanggal_periksa  ?>" class="form-control" <?php echo (form_error('tanggal_periksa')!=''?'style="border-color:red;"':'') ?>>
                                    </div>
                                  </div>
                                  <label for="" class="col-lg-1 control-label">Akhir</label>
                                  <div class="col-lg-4">
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                        <input type="text" name="tanggal_selesai" id="tanggal_selesai" value="<?php echo $tanggal_selesai  ?>" class="form-control" <?php echo (form_error('tanggal_selesai')!=''?'style="border-color:red;"':'') ?>>
                                    </div>
                                  </div>
                                </div>

                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">TL</label>
                                  <div class="col-lg-6">
                                   <select name="tl" id="tl" class="form-control select2">
                                       <?php foreach ($list_tl as $key) { ?>
                                       <option value="<?php echo $key['id_users'] ?>"><?php echo $key['full_name'] ?></option>
                                       <?php } ?>
                                   </select>
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Member</label>
                                  <div class="col-lg-6">
                                   <select name="member[]" id="member" class="form-control select2" multiple="multiple" <?php echo (form_error('member')!=''?'style="border-color:red;"':'') ?>>
                                      <?php foreach ($list_audit as $key) { ?>
                                       <option value="<?php echo $key['id_users'] ?>"><?php echo $key['full_name'] ?></option>
                                       <?php } ?>
                                     </select>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Target Date</label>
                                  <div class="col-lg-4">
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                        <input type="text" name="target_date" id="target_date" value="<?php echo $target_date  ?>" class="form-control" <?php echo (form_error('target_date')!=''?'style="border-color:red;"':'') ?> disabled="disabled">
                                    </div>
                                  </div>
                                </div>
                          
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">Supervisor</label>
                                  <div class="col-lg-6">
                                   <select name="supervisor" id="supervisor" class="form-control select2">
                                      <?php foreach ($list_supervisor as $key) { ?>
                                       <option value="<?php echo $key['id_users'] ?>"><?php echo $key['full_name'] ?></option>
                                       <?php } ?>
                                   </select>
                                  </div>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6">
                                    <label for="" class="col-lg-3 control-label">BOP</label>
                                  <div class="col-lg-9">
                                        <input type="text" name="bop" id="bop" value="<?php echo $bop  ?>" class="form-control" <?php echo (form_error('bop')!=''?'style="border-color:red;"':'') ?>>
                                  </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="box-footer">
                        <button type="button" class="btn btn-default" onclick="goBack()"><i class="fa fa-close"></i> Cancel</button>
                        <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Save</button>
                    </div>
                            
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Hapus</h4>
      </div>
      <form method="POST" action="<?php echo  base_url('cat_operasional/delete'); ?>">
      <div class="modal-body">
        <p>Apakah anda yakin akan menghapus data ini</p><!-- modal hapus(mh) -->
        <input type="hidden" name="mh_id_cat_operasional" id="mh_id_cat_operasional">
        <input type="hidden" name="mh_id_cabang" id="mh_id_cabang">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-default" >Hapus</button>
      </div>
      </form>
    </div>

  </div>
</div>
        <script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
        <script src="<?php echo base_url('assets/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>

        <script type="text/javascript">
              function goBack() {
                window.history.back();
              }
             $(document).on('click','.btn_delete',function(){
                // alert('ss');
                var id_cat_operasional=$(this).attr('data-id');
                var id_cabang=$('#id_cabang').val();
                $('#mh_id_cat_operasional').val(id_cat_operasional);
                $('#mh_id_cabang').val(id_cabang);
            });

             $(document).on('change','#environment_value, #risk_assesment_value, #control_activity_value, #information_comunication_value, #monitoring_value',function(){
              var max = parseInt($(this).attr('max'));
              var min = parseInt($(this).attr('min'));
              if ($(this).val() > max){
                $(this).val(max);
                    
              }else  if ($(this).val() < min){
                $(this).val(min);
              }
              var environment_value=($('#environment_value').val()==''?0:parseInt($('#environment_value').val()));
              var risk_assesment_value=($('#risk_assesment_value').val()==''?0:parseInt($('#risk_assesment_value').val()));
              var control_activities_value=($('#control_activity_value').val()==''?0:parseInt($('#control_activity_value').val()));
              var information_comunication_value=($('#information_comunication_value').val()==''?0:parseInt($('#information_comunication_value').val()));
              var monitoring_value=($('#monitoring_value').val()==''?0:parseInt($('#monitoring_value').val()));
              var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);
              $('#total_impact').val(jml);

                    var likelihood=$('#likelihood').val();
                    if(likelihood!=''){
                        var repeated=$('#repeated').val();
                        if(repeated=='Yes'){
                          var tmp_tev=(jml*likelihood)+((jml*likelihood)*10/100);
                        }else{
                          var tmp_tev=(jml*likelihood);
                        }
                        $('#tev').val(tmp_tev.toFixed(2));
                        if(tmp_tev < 1.7){
                            $('#bobot_resiko').val('Low');
                        }else if(tmp_tev >=1.7 && tmp_tev<=3){
                            $('#bobot_resiko').val('Moderate');
                        }else if(tmp_tev >3){
                            $('#bobot_resiko').val('Height');
                        }
                    }
             });
              

             $(document).on('keyup','#environment_value, #risk_assesment_value, #control_activity_value, #information_comunication_value, #monitoring_value',function(){
              
              var max = parseInt($(this).attr('max'));
              var min = parseInt($(this).attr('min'));
              if ($(this).val() > max){
                $(this).val(max);
                    
              }else  if ($(this).val() < min){
                $(this).val(min);
              }
              var environment_value=($('#environment_value').val()==''?0:parseInt($('#environment_value').val()));
              var risk_assesment_value=($('#risk_assesment_value').val()==''?0:parseInt($('#risk_assesment_value').val()));
              var control_activities_value=($('#control_activity_value').val()==''?0:parseInt($('#control_activity_value').val()));
              var information_comunication_value=($('#information_comunication_value').val()==''?0:parseInt($('#information_comunication_value').val()));
              var monitoring_value=($('#monitoring_value').val()==''?0:parseInt($('#monitoring_value').val()));
              var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);
              $('#total_impact').val(jml);

                    // var jml= parseInt($('#total_impact').val());
                    var likelihood=$('#likelihood').val();
                    if(likelihood!=''){
                        var repeated=$('#repeated').val();
                        if(repeated=='Yes'){
                          var tmp_tev=(jml*likelihood)+((jml*likelihood)*10/100);
                        }else{
                          var tmp_tev=(jml*likelihood);
                        }
                        $('#tev').val(tmp_tev.toFixed(2));
                        if(tmp_tev < 1.7){
                            $('#bobot_resiko').val('Low');
                        }else if(tmp_tev >=1.7 && tmp_tev<=3){
                            $('#bobot_resiko').val('Moderate');
                        }else if(tmp_tev >3){
                            $('#bobot_resiko').val('Height');
                        }
                    }
             });

             $(document).on('change','#likelihood', function(e) { 
                if($('#total_impact').val()!=''){
                    var jml= parseInt($('#total_impact').val());
                    var likelihood=parseFloat($(this).val());
                    var repeated=$('#repeated').val();
                      console.log(jml);
                    if(repeated=='Yes'){
                      var tmp_tev=(jml*likelihood)+((jml*likelihood)*10/100);
                    }else{
                      var tmp_tev=(jml*likelihood);
                    }
                    $('#tev').val(tmp_tev.toFixed(2));
                    if(tmp_tev < 1.7){
                        $('#bobot_resiko').val('Low');
                    }else if(tmp_tev >=1.7 && tmp_tev<=3){
                        $('#bobot_resiko').val('Moderate');
                    }else if(tmp_tev >3){
                        $('#bobot_resiko').val('Height');
                    }
                }
              });

              $(document).on('change','#repeated', function(e) { 
                if($('#total_impact').val()!='' && $('#likelihood').val()!=''){
                    var jml= parseInt($('#total_impact').val());
                    var repeated=$(this).val();
                    var likelihood=parseFloat($('#likelihood').val());
                    if(repeated=='Yes'){
                      var tmp_tev=(jml*likelihood)+((jml*likelihood)*10/100);
                    }else{
                      var tmp_tev=(jml*likelihood);
                    }
                    $('#tev').val(tmp_tev.toFixed(2));
                    if(tmp_tev < 1.7){
                        $('#bobot_resiko').val('Low');
                    }else if(tmp_tev >=1.7 && tmp_tev<=3){
                        $('#bobot_resiko').val('Moderate');
                    }else if(tmp_tev >3){
                        $('#bobot_resiko').val('Height');
                    }
                }
              });

              $(document).on('change','#id_cabang', function(e) { 
                var nama_cabang=$(this).find('option:selected').attr('data-nama_cabang');
                var alamat_cabang=$(this).find('option:selected').attr('data-alamat');
                $('#nama_cabang').val(nama_cabang);
                $('#alamat_cabang').val(alamat_cabang);
              });


$(document).ready(function() {
  $('#periode').datepicker();
  $('#tanggal_periksa').datepicker({
    dateFormat: 'dd-mm-yy',
    onSelect: function (dateText) {
         var d3 = $(this).datepicker('getDate');
         d3.setDate(d3.getDate() + parseInt(1));
         $("#target_date").datepicker('option', 'minDate', d3);
         $("#target_date").removeAttr('disabled');
    },
  });

  $('#tanggal_selesai').datepicker({dateFormat: 'dd-mm-yy',});
  $('#target_date').datepicker({
    dateFormat: 'dd-mm-yy',
  });
  
  var arr="<?php echo $member;?>";
  var pecah=arr.split(',');
  $('#member').val(pecah);
  // $('#mySelect2').val(['1', '2']);
            //     $('.tmabah_data').click(function(){
            //         var id_cabang=$('#id_cabang').val();
            //         var nama_cabang=$('#nama_cabang').val();
            //         var periode=$('#periode').val();
            //         var date= new Date(periode);
            //         var periodenya= date.getFullYear() + '-' + ((date.getMonth() > 8) ? (date.getMonth() + 1) : ('0' + (date.getMonth() + 1))) + '-' + ((date.getDate() > 9) ? date.getDate() : ('0' + date.getDate()));
            //         if(periode!=''){
            //         $.ajax({
            //               type: "POST",
            //               url: "<?php echo base_url(); ?>cat_operasional/create_action",
            //               data: 'id_cabang='+id_cabang+'&nama_cabang='+nama_cabang+'&periode='+periode,
            //               beforeSend: function(){
            //                   // $('.loading_data').css('display','block');
            //               },
            //               error: function(data, errorThrown){
            //                       alert('request failed :'+errorThrown);
            //                     },
            //               success: function(response){
            //                  console.log(response);
            //                   // Notify('Data has been updated', null, null, '');
            //                   // $(this).attr('data','cccc');
            //               },
            //               complete: function(response){
            //                     // location.reload();
            //                     if(response){
            //                         window.location.href = "<?php echo base_url('cat_operasional/tambah_data_history/');?>"+id_cabang+'/'+periodenya;
            //                     }
            //                   // $('.loading_data').css('display','none');
            //               }
            //         });
            //     }else{
            //         alert('periode harap di isi');
            //     }
            //     });
});
        </script>