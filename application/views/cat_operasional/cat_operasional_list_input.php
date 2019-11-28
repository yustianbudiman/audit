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
                            <small>Data CAT Operasional</small>
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
                    <div class="box-body pad" style="overflow: auto;">
                        <div style="padding-bottom: 10px; overflow: auto; padding-right: 10px;">
                            <div class="form-group" style="padding:  15px;">
                                <div class="col-md-12 col-sm-12">
                                    <label for="employeeid" class="col-lg-2 control-label">Id Cabang:</label>
                                  <div class="col-lg-4">
                                        <input type="text" name="id_cabang" id="id_cabang" value="<?php echo $list_cabang_one->id_cabang; ?>" class="form-control">
                                  </div>
                                </div>
                            </div>
                            <div class="form-group" style="padding:  15px;">
                                <div class="col-md-12 col-sm-12">
                                    <label for="employeeid" class="col-lg-2 control-label">Nama Cabang:</label>
                                  <div class="col-lg-4">
                                    <input type="text" name="nama_cabang" id="nama_cabang" value="<?php echo $list_cabang_one->nama_cabang; ?>" class="form-control">
                                  </div>
                                </div>
                            </div>
                            <div class="form-group" style="padding:  15px;">
                                <div class="col-md-12 col-sm-12">
                                    <label for="employeeid" class="col-lg-2 control-label">Alamat:</label>
                                  <div class="col-lg-4">
                                    <input type="text" name="alamat_cabang" id="alamat_cabang" value="<?php  echo $list_cabang_one->alamat; ?>" class="form-control">
                                  </div>
                                </div>
                            </div>

                            <div class="form-group" style="padding:  15px;">
                                <div class="col-md-12 col-sm-12">
                                    <label for="employeeid" class="col-lg-2 control-label">Periode:</label>
                                  <div class="col-lg-2">
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                    <input type="text" name="periode" id="periode" value="<?php echo ($list_cat_operasional_header==''?'':$list_cat_operasional_header['periode'])?>" class="form-control">
                                    </div>
                                  </div>
                                </div>
                            </div>

                        </div>
                        <div style="padding-bottom: 10px; overflow: auto;">
                        <?php //echo anchor(site_url('cat_operasional/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); ?>
                        <?php //echo anchor(site_url('cat_operasional/excel'), '<i class="fa fa-file-excel-o" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-success btn-sm"'); ?>
                        <button type="button" class="btn btn-primary btn-sm btn-flat tmabah_data"><i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data</button>
                        </div>
                    <table class="table table-bordered table-hover" id="mytable">
                        <thead>
                            <tr>
                                <th width="30px">No</th>
                                <th>Temuan</th>
                    		    <th>Klasifikasi Temuan</th>
                    		    <th>Kriteria</th>
                    		    <th>Dampak</th>
                    		    <th>Sebab Penyimpangan</th>
                    		    <th>Cont Environment</th>
                    		    <th>Impact</th>
                    		    <th>Risk Assesment</th>
                    		    <th>Impact</th>
                    		    <th>Control Activiti</th>
                    		    <th>Impact</th>
                    		    <th>Infomation Comunication</th>
                    		    <th>Impact</th>
                    		    <th>Monitoring</th>
                    		    <th>Impact</th>
                    		    <th>Total Impact</th>
                    		    <th>Likelihood</th>
                                <th>Repeated</th>
                    		    <th>Tev</th>
                    		    <th>Bobot Resiko</th>
                    		    <th>Rekomendasi</th>
                    		    <th>Tanggapan Audit</th>
                    		    <th>Target Date</th>
                    		    <th width="200px">Action</th>
                            </tr>
                        </thead>
                        <tbody class="tb_cat_operasional">
                            <?php $no=1; foreach ($list_cat_operasional as $row) { ?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td>
                                    <input type="hidden" value="<?php echo $row->id_cat_operasional ?>" name="id_cat_operasional"  class="form-control id_cat_operasional" style="width: 200px;">
                                    <input type="text" value="<?php echo $row->temuan ?>" name="temuan"  class="form-control temuan" style="width: 200px;">
                                </td>
                                <td>
                                    <select name="klasifikasi_temuan" class="form-control klasifikasi_temuan select2" style="width: 300px;">
                                        <?php foreach ($list_klasifikasi_temuan as $key) { ?>
                                        <option value="<?php echo $key->id_klasifikasi_temuan ?>" <?php echo ($row->klasifikasi_temuan==$key->id_klasifikasi_temuan?'selected':'') ?> ><?php echo $key->nama_klasifikasi_temuan ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="text" value="<?php echo $row->kriteria ?>" name="kriteria"  class="form-control kriteria" style="width: 200px;"></td>
                                <td><input type="text" value="<?php echo $row->dampak ?>" name="dampak"  class="form-control dampak" style="width: 200px;"></td>
                                <td>
                                    <select name="sebab_penyimpangan" class="form-control sebab_penyimpangan select2" style="width: 300px;">
                                        <?php foreach ($list_penyimpangan as $key) { ?>
                                        <option value="<?php echo $key->id_penyimpangan ?>" <?php echo ($row->id_penyimpangan==$key->id_penyimpangan?'selected':'') ?> ><?php echo $key->nama_penyimpangan ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td>
                                    <select name="environment" class="form-control environment select2" style="width: 300px;">
                                        <?php foreach ($list_environment as $key) { ?>
                                        <option value="<?php echo $key->id_environment ?>" <?php echo ($row->id_environment==$key->id_environment?'selected':'') ?> ><?php echo $key->nama_environment ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="number" value="<?php echo $row->environment_value ?>" name="environment_value" class="form-control environment_value" style="width: 100px;" min="1" max="5"></td>
                                <td>
                                    <select name="risk_assesment" class="form-control risk_assesment select2" style="width: 300px;">
                                        <?php foreach ($list_risk_assesment as $key) { ?>
                                        <option value="<?php echo $key->id_risk_assesment ?>" <?php echo ($row->id_risk_assesment==$key->id_risk_assesment?'selected':'') ?> ><?php echo $key->nama_risk_assesment ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="number" value="<?php echo $row->risk_assesment_value ?>" name="risk_assesment_value" class="form-control risk_assesment_value" style="width: 100px;" min="1" max="5"></td>
                                <td>
                                    <select name="control_activitis" class="form-control control_activitis select2" style="width: 300px;">
                                        <?php foreach ($list_control_activities as $key) { ?>
                                        <option value="<?php echo $key->id_control_activities ?>" <?php echo ($row->id_control_activities==$key->id_control_activities?'selected':'') ?> ><?php echo $key->nama_control_activities ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="number" value="<?php echo $row->control_activities_value ?>" name="control_activities_value" class="form-control control_activities_value" style="width: 100px;" min="1" max="5"></td>
                                <td>
                                    <select name="infomation_comunication" class="form-control infomation_comunication select2" style="width: 300px;">
                                        <?php foreach ($list_information_comunication as $key) { ?>
                                        <option value="<?php echo $key->id_information_comunication ?>" <?php echo ($row->id_information_comunication==$key->id_information_comunication?'selected':'') ?> ><?php echo $key->nama_information_comunication ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="number" value="<?php echo $row->information_comunication_value ?>" name="information_comunication_value" class="form-control information_comunication_value" style="width: 100px;" min="1" max="5"></td>
                                <td>
                                     <select name="monitoring" class="form-control monitoring select2" style="width: 300px;">
                                        <?php foreach ($list_monitoring as $key) { ?>
                                        <option value="<?php echo $key->id_monitoring ?>" <?php echo ($row->id_monitoring==$key->id_monitoring?'selected':'') ?> ><?php echo $key->nama_monitoring ?></option>
                                        <?php } ?>
                                    </select>
                                </td>
                                <td><input type="number" value="<?php echo $row->monitoring_value ?>" name="monitoring_value" class="form-control monitoring_value" style="width: 100px;" min="1" max="5"></td>
                                <td><input type="text" value="<?php echo $row->total_impact ?>" name="total_impact" class="form-control total_impact" style="width: 100px;" readonly="true"></td>
                                <td>
                                    <select name="probaly" class="form-control probaly" style="width: 100px;">
                                        <option value="">Pilih</option>
                                        <option value="0.2" <?php echo($row->probaly=='0.2'?'selected':'') ?>>0.2</option>
                                        <option value="0.4" <?php echo($row->probaly=='0.4'?'selected':'') ?>>0.4</option>
                                        <option value="0.6" <?php echo($row->probaly=='0.6'?'selected':'') ?>>0.6</option>
                                        <option value="0.8" <?php echo($row->probaly=='0.8'?'selected':'') ?>>0.8</option>
                                        <option value="1" <?php echo($row->probaly=='1'?'selected':'') ?>>1</option>
                                    </select>
                                </td>
                                <td>
                                    <select name="repeated" class="form-control repeated" style="width: 100px;">
                                        <option value="">Pilih</option>
                                        <option value="yes" <?php echo($row->repeated=='yes'?'selected':'') ?> >yes</option>
                                        <option value="no" <?php echo($row->repeated=='no'?'selected':'') ?> >no</option>
                                    </select>
                                </td>
                                <td><input type="text" value="<?php echo $row->tev ?>" name="tev" class="form-control tev" style="width: 50px;"></td>
                                <td><input type="text" value="<?php echo $row->bobot_resiko ?>" name="bobot_resiko" class="form-control bobot_resiko" style="width: 150px;"></td>
                                <td><input type="text" value="<?php echo $row->rekomendasi ?>" name="rekomendasi" class="form-control rekomendasi" style="width: 100px;"></td>
                                <td><input type="text" value="<?php echo $row->tanggapan_audit ?>" name="tanggapan_audit" class="form-control tanggapan_audit" style="width: 150px;"></td>
                                <td>
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                    <input type="text" value="<?php echo $row->target_date ?>" name="target_date" class="form-control target_date" style="width: 150px;">
                                    </div>
                                </td>
                                <td>
                                    <div style="width:150px;">
                                    <button type="button" class="btn btn-primary btn-sm btn-flat btn_update"><i class="fa fa-save"></i> Simpan</button>
                                    <button type="button" class="btn btn-danger btn-sm btn-flat btn_delete" data-id="<?php echo $row->id_cat_operasional ?>" data-toggle="modal" data-target="#myModal"><i class="fa fa-times"></i> Hapus</button>
                                    </div>
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
            $(document).on('click','.btn_update',function(){
                var id_cat_operasional=$(this).closest('tr').find('.id_cat_operasional').val();
                var id_cat_operasional=$(this).closest('tr').find('.id_cat_operasional').val();
                var temuan=$(this).closest('tr').find('.temuan').val();
                var klasifikasi_temuan=$(this).closest('tr').find('.klasifikasi_temuan').val();
                var kriteria=$(this).closest('tr').find('.kriteria').val();
                var dampak=$(this).closest('tr').find('.dampak').val();
                var sebab_penyimpangan=$(this).closest('tr').find('.sebab_penyimpangan').val();
                var environment=$(this).closest('tr').find('.environment').val();
                var environment_value=$(this).closest('tr').find('.environment_value').val();
                var risk_assesment=$(this).closest('tr').find('.risk_assesment').val();
                var risk_assesment_value=$(this).closest('tr').find('.risk_assesment_value').val();
                var control_activitis=$(this).closest('tr').find('.control_activitis').val();
                var control_activities_value=$(this).closest('tr').find('.control_activities_value').val();
                var infomation_comunication=$(this).closest('tr').find('.infomation_comunication').val();
                var information_comunication_value=$(this).closest('tr').find('.information_comunication_value').val();
                var monitoring=$(this).closest('tr').find('.monitoring').val();
                var monitoring_value=$(this).closest('tr').find('.monitoring_value').val();
                var goal_stategic=$(this).closest('tr').find('.goal_stategic').val();
                var goal_strategic_value=$(this).closest('tr').find('.goal_strategic_value').val();
                var total_impact=$(this).closest('tr').find('.total_impact').val();
                var probaly=$(this).closest('tr').find('.probaly').val();
                var repeated=$(this).closest('tr').find('.repeated').val();
                var tev=$(this).closest('tr').find('.tev').val();
                var bobot_resiko=$(this).closest('tr').find('.bobot_resiko').val();
                var rekomendasi=$(this).closest('tr').find('.rekomendasi').val();
                var tanggapan_audit=$(this).closest('tr').find('.tanggapan_audit').val();
                var target_date=$(this).closest('tr').find('.target_date').val();
                $.ajax({
                      type: "POST",
                      url: "<?php echo base_url(); ?>cat_operasional/update_action",
                      data: {   'id_cat_operasional':id_cat_operasional,
                                'temuan':temuan,
                                'klasifikasi_temuan':klasifikasi_temuan,
                                'kriteria':kriteria,
                                'dampak':dampak,
                                'sebab_penyimpangan':sebab_penyimpangan,
                                'environment':environment,
                                'environment_value':environment_value,
                                'risk_assesment':risk_assesment,
                                'risk_assesment_value':risk_assesment_value,
                                'control_activitis':control_activitis,
                                'control_activities_value':control_activities_value,
                                'infomation_comunication':infomation_comunication,
                                'information_comunication_value':information_comunication_value,
                                'monitoring':monitoring,
                                'monitoring_value':monitoring_value,
                                'goal_stategic':goal_stategic,
                                'goal_strategic_value':goal_strategic_value,
                                'total_impact':total_impact,
                                'probaly':probaly,
                                'repeated':repeated,
                                'tev':tev,
                                'bobot_resiko':bobot_resiko,
                                'rekomendasi':rekomendasi,
                                'tanggapan_audit':tanggapan_audit,
                                'target_date':target_date
                            },
                      // dataType:'json'
                      beforeSend: function(){
                          // $('.loading_data').css('display','block');
                      },
                      error: function(data, errorThrown){
                              alert('request failed :'+errorThrown);
                            },
                      success: function(response){
                        console.log(response);
                          // Notify('Data has been updated', null, null, '');
                          // $(this).attr('data','cccc');
                      },
                      complete: function(response){
                          // $('.loading_data').css('display','none');
                           // location.reload();
                           alert('data berhasil di simpan');
                      }
                });

                // $('.environment_value, .risk_assesment_value, .control_activities_value, .information_comunication_value, .monitoring_value').keypress(function(){
                //     alert('sss');
                // })
            });
             
              $(document).on('keyup','.environment_value, .risk_assesment_value, .control_activities_value, .information_comunication_value, .monitoring_value',function(){

                    var max = parseInt($(this).attr('max'));
                    var min = parseInt($(this).attr('min'));
                    var repeated = $(this).closest('tr').find('.repeated').val();
                    var probaly = $(this).closest('tr').find('.probaly').val();
                    
                      if ($(this).val() > max)
                      {
                          $(this).val(max);
                          var environment_value=parseInt($(this).closest('tr').find('.environment_value').val());
                    var risk_assesment_value=parseInt($(this).closest('tr').find('.risk_assesment_value').val());
                    var control_activities_value=parseInt($(this).closest('tr').find('.control_activities_value').val());
                    var information_comunication_value=parseInt($(this).closest('tr').find('.information_comunication_value').val());
                    var monitoring_value=parseInt($(this).closest('tr').find('.monitoring_value').val());
                    var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);
                      }
                      else if ($(this).val() < min)
                      {
                          $(this).val(min);
                          var environment_value=parseInt($(this).closest('tr').find('.environment_value').val());
                    var risk_assesment_value=parseInt($(this).closest('tr').find('.risk_assesment_value').val());
                    var control_activities_value=parseInt($(this).closest('tr').find('.control_activities_value').val());
                    var information_comunication_value=parseInt($(this).closest('tr').find('.information_comunication_value').val());
                    var monitoring_value=parseInt($(this).closest('tr').find('.monitoring_value').val());
                    var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);
                      }else{
                        var environment_value=parseInt($(this).closest('tr').find('.environment_value').val());
                    var risk_assesment_value=parseInt($(this).closest('tr').find('.risk_assesment_value').val());
                    var control_activities_value=parseInt($(this).closest('tr').find('.control_activities_value').val());
                    var information_comunication_value=parseInt($(this).closest('tr').find('.information_comunication_value').val());
                    var monitoring_value=parseInt($(this).closest('tr').find('.monitoring_value').val());
                        var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);
                        
                      }      
                        $(this).closest('tr').find('.total_impact').val(jml);
                        if(probaly!=''){
                            if(repeated=='yes'){
                                var tmp_tev=(jml*probaly)+((jml*probaly)*10/100);
                                $(this).closest('tr').find('.tev').val(tmp_tev);
                                if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                            }else{
                                var tmp_tev=(jml*probaly);
                                $(this).closest('tr').find('.tev').val(tmp_tev);
                                $(this).closest('tr').find('.bobot_resiko').val(tmp_tev);
                                 if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                            }
                        }
                        

                });

                $(document).on('change','.probaly',function(){
                    var repeated = $(this).closest('tr').find('.repeated').val();
                    var probaly = $(this).val();
                    var environment_value=parseInt($(this).closest('tr').find('.environment_value').val());
                    var risk_assesment_value=parseInt($(this).closest('tr').find('.risk_assesment_value').val());
                    var control_activities_value=parseInt($(this).closest('tr').find('.control_activities_value').val());
                    var information_comunication_value=parseInt($(this).closest('tr').find('.information_comunication_value').val());
                    var monitoring_value=parseInt($(this).closest('tr').find('.monitoring_value').val());
                    var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);

                        if(repeated=='yes'){
                            var tmp_tev=(jml*probaly)+((jml*probaly)*10/100);
                            $(this).closest('tr').find('.tev').val(tmp_tev);
                             if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                        }else{
                            var tmp_tev=(jml*probaly);
                            $(this).closest('tr').find('.tev').val(tmp_tev);
                             if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                        }
                });

                 $(document).on('change','.repeated',function(){
                    var probaly = $(this).closest('tr').find('.probaly').val();
                    var repeated = $(this).val();
                    var environment_value=parseInt($(this).closest('tr').find('.environment_value').val());
                    var risk_assesment_value=parseInt($(this).closest('tr').find('.risk_assesment_value').val());
                    var control_activities_value=parseInt($(this).closest('tr').find('.control_activities_value').val());
                    var information_comunication_value=parseInt($(this).closest('tr').find('.information_comunication_value').val());
                    var monitoring_value=parseInt($(this).closest('tr').find('.monitoring_value').val());
                    var jml=(environment_value+risk_assesment_value+control_activities_value+information_comunication_value+monitoring_value);

                        if(repeated=='yes'){
                            var tmp_tev=(jml*probaly)+((jml*probaly)*10/100);
                            $(this).closest('tr').find('.tev').val(tmp_tev);
                             if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                        }else{
                            var tmp_tev=(jml*probaly);
                            $(this).closest('tr').find('.tev').val(tmp_tev);
                             if(tmp_tev < 1.7){
                                    $(this).closest('tr').find('.bobot_resiko').val('Low');
                                }else if(tmp_tev >=1.7 && tmp_tev<=3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Moderate');
                                }else if(tmp_tev >3){
                                    $(this).closest('tr').find('.bobot_resiko').val('Height');
                                }
                        }
                });

              // $(document).on('keyup','.environment_value, .risk_assesment_value, .control_activities_value, .information_comunication_value, .monitoring_value',function(){
              //     var max = parseInt($(this).attr('max'));
              //     var min = parseInt($(this).attr('min'));
              //     if ($(this).val() > max)
              //     {
              //         $(this).val(max);
              //     }
              //     else if ($(this).val() < min)
              //     {
              //         $(this).val(min);
              //     }       
              //   }); 

             $(document).on('click','.btn_delete',function(){
                // alert('ss');
                var id_cat_operasional=$(this).attr('data-id');
                var id_cabang=$('#id_cabang').val();
                $('#mh_id_cat_operasional').val(id_cat_operasional);
                $('#mh_id_cabang').val(id_cabang);
            });


            $(document).ready(function() {
                $('#periode').datepicker();
                $('.target_date').datepicker();
                $('.tmabah_data').click(function(){
                    var id_cabang=$('#id_cabang').val();
                    var nama_cabang=$('#nama_cabang').val();
                    var periode=$('#periode').val();
                    var date= new Date(periode);
                    var periodenya= date.getFullYear() + '-' + ((date.getMonth() > 8) ? (date.getMonth() + 1) : ('0' + (date.getMonth() + 1))) + '-' + ((date.getDate() > 9) ? date.getDate() : ('0' + date.getDate()));
                    if(periode!=''){
                    $.ajax({
                          type: "POST",
                          url: "<?php echo base_url(); ?>cat_operasional/create_action",
                          data: 'id_cabang='+id_cabang+'&nama_cabang='+nama_cabang+'&periode='+periode,
                          beforeSend: function(){
                              // $('.loading_data').css('display','block');
                          },
                          error: function(data, errorThrown){
                                  alert('request failed :'+errorThrown);
                                },
                          success: function(response){
                            console.log(response);
                              // Notify('Data has been updated', null, null, '');
                              // $(this).attr('data','cccc');
                          },
                          complete: function(response){
                                // location.reload();
                                if(response){
                                    window.location.href = "<?php echo base_url('cat_operasional/tambah_data_history/');?>"+id_cabang+'/'+periodenya;
                                }
                              // $('.loading_data').css('display','none');
                          }
                    });
                }else{
                    alert('periode harap di isi');
                }
                });
            });
        </script>