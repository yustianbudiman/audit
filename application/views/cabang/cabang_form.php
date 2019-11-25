<div class="content-wrapper">
    
    <section class="content">
        <div class="box box-warning box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">INPUT DATA CABANG</h3>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered>'        

	    <tr><td width='200'>Kode Cabang <?php echo form_error('kode_cabang') ?></td><td><input type="text" class="form-control" name="kode_cabang" id="kode_cabang" placeholder="Kode Cabang" value="<?php echo $kode_cabang; ?>" /></td></tr>
	    <tr><td width='200'>Nama Cabang <?php echo form_error('nama_cabang') ?></td><td><input type="text" class="form-control" name="nama_cabang" id="nama_cabang" placeholder="Nama Cabang" value="<?php echo $nama_cabang; ?>" /></td></tr>
	    <tr><td width='200'>Alamat <?php echo form_error('alamat') ?></td><td><input type="text" class="form-control" name="alamat" id="alamat" placeholder="Alamat" value="<?php echo $alamat; ?>" /></td></tr>
	    <tr><td width='200'>Kota <?php echo form_error('kota') ?></td><td><input type="text" class="form-control" name="kota" id="kota" placeholder="Kota" value="<?php echo $kota; ?>" /></td></tr>
	    <tr><td width='200'>Provinsi <?php echo form_error('provinsi') ?></td><td><input type="text" class="form-control" name="provinsi" id="provinsi" placeholder="Provinsi" value="<?php echo $provinsi; ?>" /></td></tr>
	    <tr><td width='200'>No Telepon <?php echo form_error('no_telepon') ?></td><td><input type="text" class="form-control" name="no_telepon" id="no_telepon" placeholder="No Telepon" value="<?php echo $no_telepon; ?>" /></td></tr>
	    <tr><td width='200'>Kepala Cabang <?php echo form_error('kepala_cabang') ?></td><td><input type="text" class="form-control" name="kepala_cabang" id="kepala_cabang" placeholder="Kepala Cabang" value="<?php echo $kepala_cabang; ?>" /></td></tr>
	    <tr><td width='200'>Keterangan <?php echo form_error('keterangan') ?></td><td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" value="<?php echo $keterangan; ?>" /></td></tr>
	    <tr><td width='200'>Aktif <?php echo form_error('aktif') ?></td><td><input type="text" class="form-control" name="aktif" id="aktif" placeholder="Aktif" value="<?php echo $aktif; ?>" /></td></tr>
	    <tr><td width='200'>Created Date <?php echo form_error('created_date') ?></td><td><input type="text" class="form-control" name="created_date" id="created_date" placeholder="Created Date" value="<?php echo $created_date; ?>" /></td></tr>
	    <tr><td width='200'>Created Ip <?php echo form_error('created_ip') ?></td><td><input type="text" class="form-control" name="created_ip" id="created_ip" placeholder="Created Ip" value="<?php echo $created_ip; ?>" /></td></tr>
	    <tr><td width='200'>Created By <?php echo form_error('created_by') ?></td><td><input type="text" class="form-control" name="created_by" id="created_by" placeholder="Created By" value="<?php echo $created_by; ?>" /></td></tr>
	    <tr><td width='200'>Updated Date <?php echo form_error('updated_date') ?></td><td><input type="text" class="form-control" name="updated_date" id="updated_date" placeholder="Updated Date" value="<?php echo $updated_date; ?>" /></td></tr>
	    <tr><td width='200'>Updated Ip <?php echo form_error('updated_ip') ?></td><td><input type="text" class="form-control" name="updated_ip" id="updated_ip" placeholder="Updated Ip" value="<?php echo $updated_ip; ?>" /></td></tr>
	    <tr><td width='200'>Updated By <?php echo form_error('updated_by') ?></td><td><input type="text" class="form-control" name="updated_by" id="updated_by" placeholder="Updated By" value="<?php echo $updated_by; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_cabang" value="<?php echo $id_cabang; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('cabang') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        </div>
</div>
</div>