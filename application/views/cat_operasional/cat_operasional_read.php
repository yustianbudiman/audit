<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            body{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <h2 style="margin-top:0px">Cat_operasional Read</h2>
        <table class="table">
	    <tr><td>Id Cabang</td><td><?php echo $id_cabang; ?></td></tr>
	    <tr><td>Nama Cabang</td><td><?php echo $nama_cabang; ?></td></tr>
	    <tr><td>Id Temuan</td><td><?php echo $id_temuan; ?></td></tr>
	    <tr><td>Kriteria</td><td><?php echo $kriteria; ?></td></tr>
	    <tr><td>Dampak</td><td><?php echo $dampak; ?></td></tr>
	    <tr><td>Id Penyimpangan</td><td><?php echo $id_penyimpangan; ?></td></tr>
	    <tr><td>Id Environment</td><td><?php echo $id_environment; ?></td></tr>
	    <tr><td>Environment Value</td><td><?php echo $environment_value; ?></td></tr>
	    <tr><td>Id Risk Assesment</td><td><?php echo $id_risk_assesment; ?></td></tr>
	    <tr><td>Risk Assesment Value</td><td><?php echo $risk_assesment_value; ?></td></tr>
	    <tr><td>Id Control Activiti</td><td><?php echo $id_control_activiti; ?></td></tr>
	    <tr><td>Control Activiti Value</td><td><?php echo $control_activiti_value; ?></td></tr>
	    <tr><td>Id Infomation Comunication</td><td><?php echo $id_infomation_comunication; ?></td></tr>
	    <tr><td>Infomation Comunication Value</td><td><?php echo $infomation_comunication_value; ?></td></tr>
	    <tr><td>Id Monitoring</td><td><?php echo $id_monitoring; ?></td></tr>
	    <tr><td>Monitoring Value</td><td><?php echo $monitoring_value; ?></td></tr>
	    <tr><td>Total Impact</td><td><?php echo $total_impact; ?></td></tr>
	    <tr><td>Probaly</td><td><?php echo $probaly; ?></td></tr>
	    <tr><td>Tev</td><td><?php echo $tev; ?></td></tr>
	    <tr><td>Bobot Resiko</td><td><?php echo $bobot_resiko; ?></td></tr>
	    <tr><td>Rekomendasi</td><td><?php echo $rekomendasi; ?></td></tr>
	    <tr><td>Tanggapan Audit</td><td><?php echo $tanggapan_audit; ?></td></tr>
	    <tr><td>Target Date</td><td><?php echo $target_date; ?></td></tr>
	    <tr><td>Aktif</td><td><?php echo $aktif; ?></td></tr>
	    <tr><td>Created Date</td><td><?php echo $created_date; ?></td></tr>
	    <tr><td>Created Ip</td><td><?php echo $created_ip; ?></td></tr>
	    <tr><td>Created By</td><td><?php echo $created_by; ?></td></tr>
	    <tr><td>Updated Date</td><td><?php echo $updated_date; ?></td></tr>
	    <tr><td>Updated Ip</td><td><?php echo $updated_ip; ?></td></tr>
	    <tr><td>Updated By</td><td><?php echo $updated_by; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('cat_operasional') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
        </body>
</html>