<link rel="stylesheet" href="<?php echo base_url('assets/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') ?>">
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
               <?php if($this->session->flashdata('message')['pesan']){ ?>
                                
                    <?php echo "<div class='row'>"; ?>
                    <?php echo "<div class='col-md-12'>"; ?>
                    <?php echo "<div class='alert ".$this->session->flashdata('message')['type']."' style='background-color:#f24e53; color: white;'>".$this->session->flashdata('message')['pesan']."</div>"; ?>
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
                    <div class="box-body pad">
                        <div style="padding-bottom: 10px;">
                        			<form method="POST" action="<?php echo  base_url('cat_bisnis/update_status'); ?>">
                        	        <table class="table table-bordered">
									    <tr><td style="width: 20%">Nama Cabang</td><td><?php echo $one_cat_bisnis->nama_cabang; ?></td></tr>
									    <tr><td style="width: 20%">Alamat Cabang</td><td><?php echo $one_cat_bisnis->alamat; ?></td></tr>
									    <tr><td style="width: 20%">Temuan</td><td><?php echo $one_cat_bisnis->temuan; ?></td></tr>
									    <tr><td style="width: 20%">Kriteria</td><td><?php echo $one_cat_bisnis->kriteria; ?></td></tr>
									    <tr><td style="width: 20%">Dampak</td><td><?php echo $one_cat_bisnis->dampak; ?></td></tr>
									    <tr><td style="width: 20%">Penyimpangan</td><td><?php echo $one_cat_bisnis->nama_penyimpangan; ?></td></tr>
									    <tr><td style="width: 20%">Environment</td><td><?php echo $one_cat_bisnis->nama_environment; ?></td></tr>
									    <tr><td style="width: 20%">Environment Impact</td><td><?php echo $one_cat_bisnis->environment_value; ?></td></tr>
									    <tr><td style="width: 20%">Risk Assesment</td><td><?php echo $one_cat_bisnis->nama_risk_assesment; ?></td></tr>
									    <tr><td style="width: 20%">Risk Assesment Impact</td><td><?php echo $one_cat_bisnis->risk_assesment_value; ?></td></tr>
									    <tr><td style="width: 20%">Control Activiti</td><td><?php echo $one_cat_bisnis->nama_control_activities; ?></td></tr>
									    <tr><td style="width: 20%">Control Activiti Impact</td><td><?php echo $one_cat_bisnis->control_activities_value; ?></td></tr>
									    <tr><td style="width: 20%">Information Comunication</td><td><?php echo $one_cat_bisnis->nama_information_comunication; ?></td></tr>
									    <tr><td style="width: 20%">Information Comunication Impact</td><td><?php echo $one_cat_bisnis->information_comunication_value; ?></td></tr>
									    <tr><td style="width: 20%">Monitoring</td><td><?php echo $one_cat_bisnis->nama_monitoring; ?></td></tr>
									    <tr><td style="width: 20%">Monitoring Impact</td><td><?php echo $one_cat_bisnis->monitoring_value; ?></td></tr>
									    <tr><td style="width: 20%">Goal Strategic</td><td><?php echo $one_cat_bisnis->nama_goal_strategic; ?></td></tr>
									    <tr><td style="width: 20%">Goal Strategic Impact</td><td><?php echo $one_cat_bisnis->goal_strategic_value; ?></td></tr>
									    <tr><td style="width: 20%">Total Impact</td><td><?php echo $one_cat_bisnis->total_impact; ?></td></tr>
									    <tr><td style="width: 20%">Likelihood</td><td><?php echo $one_cat_bisnis->likelihood; ?></td></tr>
									    <tr><td style="width: 20%">Tev</td><td><?php echo $one_cat_bisnis->tev; ?></td></tr>
									    <tr><td style="width: 20%">Bobot Resiko</td><td><?php echo $one_cat_bisnis->bobot_resiko; ?></td></tr>
									    <tr><td style="width: 20%">Rekomendasi</td><td><?php echo $one_cat_bisnis->rekomendasi; ?></td></tr>
									    <tr><td style="width: 20%">Tanggapan Audit</td><td><?php echo $one_cat_bisnis->tanggapan_audit; ?></td></tr>
									    <tr><td style="width: 20%">Target Date</td>
									    	<td>
									    		<div class="col-lg-3">
				                                    <?php if($_SESSION['id_user_level']==7){?>
				                                    <div class="input-group date">
				                                      <div class="input-group-addon">
				                                        <i class="fa fa-calendar"></i>
				                                      </div>
									    				<input type="text" name="target_date" id="target_date" value="<?php echo date('d-m-Y',strtotime($one_cat_bisnis->target_date)); ?>" class="form-control">
				                                    </div>
								    				<?php }else{
								    					 echo date('d-m-Y',strtotime($one_cat_bisnis->target_date)); 
								    				} ?>
				                                </div>
									    	</td>
									    </tr>
									    <tr><td style="width: 20%">Aktif</td><td><?php echo $one_cat_bisnis->aktif; ?></td></tr>
									    <tr><td style="width: 20%">Created_by</td><td><?php echo $one_cat_bisnis->created_name ?></td></tr>
									    <tr><td style="width: 20%">Updated_by</td><td><?php echo $one_cat_bisnis->updated_name ?></td></tr>
									    <tr>
									    	<td style="width: 20%">Status</td>
									    	<td>
									    		<div class="col-lg-3">
										    		<select class="form-control" name="status" >
										    			<?php foreach ($list_status as $key) { ?>
										    			<option value="<?php echo $key->id_status; ?>" <?php echo ($one_cat_bisnis->status_trx==$key->status_trx?'selected':''); ?>><?php echo $key->status_trx; ?></option>
										    			<?php } ?>
										    		</select>
									    		</div>
											</td></tr>
									   
									    <tr><td></td>
									    	<td>
									    		<?php if($this->session->userdata('id_user_level')=='4' OR $this->session->userdata('id_user_level')=='7'){?>
									    		<input type="hidden" name="id_cat_bisnis" id="id_cat_bisnis" value="<?php echo $one_cat_bisnis->id_cat_bisnis ?>">
        										<input type="hidden" name="id_cat_bisnis_header" id="id_cat_bisnis_header" value="<?php echo $one_cat_bisnis->id_cat_bisnis_header?>">
									    		<button type="submit" class="btn btn-default"><i class="fa fa-save"></i> Simpan</button>
									    		<?php } ?>
									    		<button type="button" class="btn btn-default" onclick="goBack()"><i class="fa fa-close"></i> Cancel</button>
									    	</td>
									    </tr>
									</table>
									</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script type="text/javascript">
	function goBack() {
	    window.history.back();
	 }
	$(document).ready(function() {
	  $('#target_date').datepicker();
	});
</script>
