<div class="content-wrapper">
    
  	<section class="content">
    	<div class="row">
      		<div class="col-lg-6">
        		<div class="box box-info">
          			<div class="box-header">
						<h3 class="box-title"><?php echo $button ?>
							<small>Data Divisi</small>
						</h3>
              			<!-- tools box -->
              			<div class="pull-right box-tools">
							<a href="<?php echo site_url('divisi') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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
        

							    <tr><td width='200'>Divisi </td>
							    	<td><input type="text" class="form-control" name="divisi" id="divisi" placeholder="Divisi" value="<?php echo $divisi; ?>" />
							    	<?php echo form_error('divisi') ?></td></tr>
							    <tr><td width='200'>Status Aktif </td>
							    	<td><?php echo form_dropdown('aktif', array('Aktif' => 'Aktif', 'Nonaktif' => 'Nonaktif'), $aktif, array('class' => 'form-control')); ?>
							    	<?php echo form_error('aktif') ?></td></tr>
							    
							    <tr>
	    							<td></td>
	    							<td><input type="hidden" name="id_divisi" value="<?php echo $id_divisi; ?>" /> 
			    						<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
						    			<a href="<?php echo site_url('divisi') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
							</table>
						</form>  
          			</div>       
    	  		</div>
      		</div>
    	</div>
	</section>
</div>