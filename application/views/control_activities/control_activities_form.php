<div class="content-wrapper">
    
  	<section class="content">
    	<div class="row">
      		<div class="col-lg-6">
        		<div class="box box-info">
          			<div class="box-header">
						<h3 class="box-title"><?php echo $button ?>
							<small>Data Cont. Activities</small>
						</h3>
              			<!-- tools box -->
              			<div class="pull-right box-tools">
							<a href="<?php echo site_url('control_activities') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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

							    <tr><td width='200'>Nama Contol Activities </td>
							    	<td><input type="text" class="form-control" name="nama_control_activities" id="nama_control_activities" placeholder="Nama Control Activities" value="<?php echo $nama_control_activities; ?>" />
							    	<?php echo form_error('nama_control_activities') ?></td></tr>
							    <tr><td width='200'>Keterangan </td>
							    	<td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" value="<?php echo $keterangan; ?>" />
							    	<?php echo form_error('keterangan') ?></td></tr>
							    <tr><td width='200'>Status Aktif </td>
							    	<td><?php echo form_dropdown('aktif', array('Aktif' => 'Aktif', 'Nonaktif' => 'Nonaktif'), $aktif, array('class' => 'form-control')); ?>
							    	<?php echo form_error('aktif') ?></td></tr>
							    
							    <tr>
	    							<td></td>
	    							<td><input type="hidden" name="id_control_activities" value="<?php echo $id_control_activities; ?>" /> 
			    						<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
						    			<a href="<?php echo site_url('control_activities') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
							</table>
						</form>  
          			</div>       
    	  		</div>
      		</div>
    	</div>
	</section>
</div>