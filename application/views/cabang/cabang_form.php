<div class="content-wrapper">
    
  	<section class="content">
    	<div class="row">
      		<div class="col-lg-6">
        		<div class="box box-info">
          			<div class="box-header">
						<h3 class="box-title"><?php echo $button ?>
							<small>Data Cabang</small>
						</h3>
              			<!-- tools box -->
              			<div class="pull-right box-tools">
							<a href="<?php echo site_url('cabang') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
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

							    <tr>
							    	<td width='200'>Kode Cabang</td>
							    	<td><input type="text" class="form-control" name="kode_cabang" id="kode_cabang" placeholder="Kode Cabang" value="<?php echo $kode_cabang; ?>" />
							    		<?php echo form_error('kode_cabang') ?></td></tr>
							    <tr>
							    	<td width='200'>Nama Cabang </td>
							    	<td><input type="text" class="form-control" name="nama_cabang" id="nama_cabang" placeholder="Nama Cabang" value="<?php echo $nama_cabang; ?>" />
							    		<?php echo form_error('nama_cabang') ?></td></tr>
							    <tr>
							    	<td width='200'>Alamat</td>
							    	<td><input type="text" class="form-control" name="alamat" id="alamat" placeholder="Alamat" value="<?php echo $alamat; ?>" />
							    		<?php echo form_error('alamat') ?></td></tr>
							    <tr>
							    	<td width='200'>Kota </td>
							    	<td><input type="text" class="form-control" name="kota" id="kota" placeholder="Kota" value="<?php echo $kota; ?>" />
							    		<?php echo form_error('kota') ?></td></tr>
							    <tr>
							    	<td width='200'>Provinsi </td>
							    	<td><input type="text" class="form-control" name="provinsi" id="provinsi" placeholder="Provinsi" value="<?php echo $provinsi; ?>" />
							    		<?php echo form_error('provinsi') ?></td></tr>
							    <tr>
							    	<td width='200'>No Telepon</td>
							    	<td><input type="text" class="form-control" name="no_telepon" id="no_telepon" placeholder="No Telepon" value="<?php echo $no_telepon; ?>" />
							    		<?php echo form_error('no_telepon') ?></td></tr>
							    <tr>
							    	<td width='200'>Kepala Cabang </td>
							    	<td><input type="text" class="form-control" name="kepala_cabang" id="kepala_cabang" placeholder="Kepala Cabang" value="<?php echo $kepala_cabang; ?>" />
							    		<?php echo form_error('kepala_cabang') ?></td></tr>
							    <tr>
							    	<td width='200'>Keterangan </td>
							    	<td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" value="<?php echo $keterangan; ?>" />
							    		<?php echo form_error('keterangan') ?></td></tr>
							    <tr>
							    	<td width='200'>Status Aktif </td><td>
				        			<?php echo form_dropdown('aktif', array('Aktif' => 'Aktif', 'Nonaktif' => 'Nonaktif'), $aktif, array('class' => 'form-control')); ?><?php echo form_error('aktif') ?></td></tr>
	    
	    						<tr>
	    							<td></td>
	    							<td><input type="hidden" name="id_cabang" value="<?php echo $id_cabang; ?>" /> 
			    						<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
						    			<a href="<?php echo site_url('cabang') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
							</table>
						</form>  
          			</div>       
    	  		</div>
      		</div>
    	</div>
	</section>
</div>