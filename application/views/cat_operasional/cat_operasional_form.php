<div class="content-wrapper">
    
    <section class="content">
        <div class="box box-warning box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">INPUT DATA CAT_OPERASIONAL</h3>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered>'        

	    <tr><td width='200'>Id Cabang <?php echo form_error('id_cabang') ?></td><td><input type="text" class="form-control" name="id_cabang" id="id_cabang" placeholder="Id Cabang" value="<?php echo $id_cabang; ?>" /></td></tr>
	    <tr><td width='200'>Nama Cabang <?php echo form_error('nama_cabang') ?></td><td><input type="text" class="form-control" name="nama_cabang" id="nama_cabang" placeholder="Nama Cabang" value="<?php echo $nama_cabang; ?>" /></td></tr>
	    <tr><td width='200'>Id Temuan <?php echo form_error('id_temuan') ?></td><td><input type="text" class="form-control" name="id_temuan" id="id_temuan" placeholder="Id Temuan" value="<?php echo $id_temuan; ?>" /></td></tr>
	    <tr><td width='200'>Kriteria <?php echo form_error('kriteria') ?></td><td><input type="text" class="form-control" name="kriteria" id="kriteria" placeholder="Kriteria" value="<?php echo $kriteria; ?>" /></td></tr>
	    <tr><td width='200'>Dampak <?php echo form_error('dampak') ?></td><td><input type="text" class="form-control" name="dampak" id="dampak" placeholder="Dampak" value="<?php echo $dampak; ?>" /></td></tr>
	    <tr><td width='200'>Id Penyimpangan <?php echo form_error('id_penyimpangan') ?></td><td><input type="text" class="form-control" name="id_penyimpangan" id="id_penyimpangan" placeholder="Id Penyimpangan" value="<?php echo $id_penyimpangan; ?>" /></td></tr>
	    <tr><td width='200'>Id Environment <?php echo form_error('id_environment') ?></td><td><input type="text" class="form-control" name="id_environment" id="id_environment" placeholder="Id Environment" value="<?php echo $id_environment; ?>" /></td></tr>
	    <tr><td width='200'>Environment Value <?php echo form_error('environment_value') ?></td><td><input type="text" class="form-control" name="environment_value" id="environment_value" placeholder="Environment Value" value="<?php echo $environment_value; ?>" /></td></tr>
	    <tr><td width='200'>Id Risk Assesment <?php echo form_error('id_risk_assesment') ?></td><td><input type="text" class="form-control" name="id_risk_assesment" id="id_risk_assesment" placeholder="Id Risk Assesment" value="<?php echo $id_risk_assesment; ?>" /></td></tr>
	    <tr><td width='200'>Risk Assesment Value <?php echo form_error('risk_assesment_value') ?></td><td><input type="text" class="form-control" name="risk_assesment_value" id="risk_assesment_value" placeholder="Risk Assesment Value" value="<?php echo $risk_assesment_value; ?>" /></td></tr>
	    <tr><td width='200'>Id Control Activiti <?php echo form_error('id_control_activiti') ?></td><td><input type="text" class="form-control" name="id_control_activiti" id="id_control_activiti" placeholder="Id Control Activiti" value="<?php echo $id_control_activiti; ?>" /></td></tr>
	    <tr><td width='200'>Control Activiti Value <?php echo form_error('control_activiti_value') ?></td><td><input type="text" class="form-control" name="control_activiti_value" id="control_activiti_value" placeholder="Control Activiti Value" value="<?php echo $control_activiti_value; ?>" /></td></tr>
	    <tr><td width='200'>Id Infomation Comunication <?php echo form_error('id_infomation_comunication') ?></td><td><input type="text" class="form-control" name="id_infomation_comunication" id="id_infomation_comunication" placeholder="Id Infomation Comunication" value="<?php echo $id_infomation_comunication; ?>" /></td></tr>
	    <tr><td width='200'>Infomation Comunication Value <?php echo form_error('infomation_comunication_value') ?></td><td><input type="text" class="form-control" name="infomation_comunication_value" id="infomation_comunication_value" placeholder="Infomation Comunication Value" value="<?php echo $infomation_comunication_value; ?>" /></td></tr>
	    <tr><td width='200'>Id Monitoring <?php echo form_error('id_monitoring') ?></td><td><input type="text" class="form-control" name="id_monitoring" id="id_monitoring" placeholder="Id Monitoring" value="<?php echo $id_monitoring; ?>" /></td></tr>
	    <tr><td width='200'>Monitoring Value <?php echo form_error('monitoring_value') ?></td><td><input type="text" class="form-control" name="monitoring_value" id="monitoring_value" placeholder="Monitoring Value" value="<?php echo $monitoring_value; ?>" /></td></tr>
	    <tr><td width='200'>Total Impact <?php echo form_error('total_impact') ?></td><td><input type="text" class="form-control" name="total_impact" id="total_impact" placeholder="Total Impact" value="<?php echo $total_impact; ?>" /></td></tr>
	    <tr><td width='200'>Probaly <?php echo form_error('probaly') ?></td><td><input type="text" class="form-control" name="probaly" id="probaly" placeholder="Probaly" value="<?php echo $probaly; ?>" /></td></tr>
	    <tr><td width='200'>Tev <?php echo form_error('tev') ?></td><td><input type="text" class="form-control" name="tev" id="tev" placeholder="Tev" value="<?php echo $tev; ?>" /></td></tr>
	    <tr><td width='200'>Bobot Resiko <?php echo form_error('bobot_resiko') ?></td><td><input type="text" class="form-control" name="bobot_resiko" id="bobot_resiko" placeholder="Bobot Resiko" value="<?php echo $bobot_resiko; ?>" /></td></tr>
	    <tr><td width='200'>Rekomendasi <?php echo form_error('rekomendasi') ?></td><td><input type="text" class="form-control" name="rekomendasi" id="rekomendasi" placeholder="Rekomendasi" value="<?php echo $rekomendasi; ?>" /></td></tr>
	    <tr><td width='200'>Tanggapan Audit <?php echo form_error('tanggapan_audit') ?></td><td><input type="text" class="form-control" name="tanggapan_audit" id="tanggapan_audit" placeholder="Tanggapan Audit" value="<?php echo $tanggapan_audit; ?>" /></td></tr>
	    <tr><td width='200'>Target Date <?php echo form_error('target_date') ?></td><td><input type="text" class="form-control" name="target_date" id="target_date" placeholder="Target Date" value="<?php echo $target_date; ?>" /></td></tr>
	    <tr><td width='200'>Aktif <?php echo form_error('aktif') ?></td><td><input type="text" class="form-control" name="aktif" id="aktif" placeholder="Aktif" value="<?php echo $aktif; ?>" /></td></tr>
	    <tr><td width='200'>Created Date <?php echo form_error('created_date') ?></td><td><input type="text" class="form-control" name="created_date" id="created_date" placeholder="Created Date" value="<?php echo $created_date; ?>" /></td></tr>
	    <tr><td width='200'>Created Ip <?php echo form_error('created_ip') ?></td><td><input type="text" class="form-control" name="created_ip" id="created_ip" placeholder="Created Ip" value="<?php echo $created_ip; ?>" /></td></tr>
	    <tr><td width='200'>Created By <?php echo form_error('created_by') ?></td><td><input type="text" class="form-control" name="created_by" id="created_by" placeholder="Created By" value="<?php echo $created_by; ?>" /></td></tr>
	    <tr><td width='200'>Updated Date <?php echo form_error('updated_date') ?></td><td><input type="text" class="form-control" name="updated_date" id="updated_date" placeholder="Updated Date" value="<?php echo $updated_date; ?>" /></td></tr>
	    <tr><td width='200'>Updated Ip <?php echo form_error('updated_ip') ?></td><td><input type="text" class="form-control" name="updated_ip" id="updated_ip" placeholder="Updated Ip" value="<?php echo $updated_ip; ?>" /></td></tr>
	    <tr><td width='200'>Updated By <?php echo form_error('updated_by') ?></td><td><input type="text" class="form-control" name="updated_by" id="updated_by" placeholder="Updated By" value="<?php echo $updated_by; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_cat_operasional" value="<?php echo $id_cat_operasional; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('cat_operasional') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        </div>
</div>
</div>