<div class="content-wrapper">
    
  	<section class="content">
    	<div class="row">
      		<div class="col-lg-6">
        		<div class="box box-info">
          			<div class="box-header">
						<h3 class="box-title"><?php echo $button ?>
							<small>Data Information Comunication</small>
						</h3>
              			<!-- tools box -->
              			<div class="pull-right box-tools">
							<a href="<?php echo site_url('information_comunication') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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

							    <tr><td width='200'>Nama Information Comunication </td>
							    	<td><input type="text" class="form-control" name="nama_information_comunication" id="nama_information_comunication" placeholder="Nama Information Comunication" value="<?php echo $nama_information_comunication; ?>" />
							    	<?php echo form_error('nama_information_comunication') ?></td></tr>
							    <tr><td width='200'>Keterangan </td>
							    	<td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" value="<?php echo $keterangan; ?>" />
							    	<?php echo form_error('keterangan') ?></td></tr>
							    <tr><td width='200'>Status Aktif </td>
							    	<td><?php echo form_dropdown('aktif', array('Aktif' => 'Aktif', 'Nonaktif' => 'Nonaktif'), $aktif, array('class' => 'form-control')); ?>
							    	<?php echo form_error('aktif') ?></td></tr>
							    
							    <tr>
	    							<td></td>
	    							<td><input type="hidden" name="id_information_comunication" value="<?php echo $id_information_comunication; ?>" /> 
			    						<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
						    			<a href="<?php echo site_url('information_comunication') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
							</table>
						</form>  
          			</div>       
    	  		</div>
      		</div>
    	</div>
	</section>
</div>
