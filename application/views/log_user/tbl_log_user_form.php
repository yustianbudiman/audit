<div class="content-wrapper">
    
    <section class="content">
        <div class="box box-warning box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">INPUT DATA TBL_LOG_USER</h3>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered>'        

	    <tr><td width='200'>Id User <?php echo form_error('id_user') ?></td><td><input type="text" class="form-control" name="id_user" id="id_user" placeholder="Id User" value="<?php echo $id_user; ?>" /></td></tr>
	    <tr><td width='200'>Tgl Log History <?php echo form_error('tgl_log_history') ?></td><td><input type="text" class="form-control" name="tgl_log_history" id="tgl_log_history" placeholder="Tgl Log History" value="<?php echo $tgl_log_history; ?>" /></td></tr>
	    <tr><td width='200'>Action <?php echo form_error('action') ?></td><td><input type="text" class="form-control" name="action" id="action" placeholder="Action" value="<?php echo $action; ?>" /></td></tr>
	    
        <tr><td width='200'>Data <?php echo form_error('data') ?></td><td> <textarea class="form-control" rows="3" name="data" id="data" placeholder="Data"><?php echo $data; ?></textarea></td></tr>
	    <tr><td width='200'>Deskripsi <?php echo form_error('deskripsi') ?></td><td><input type="text" class="form-control" name="deskripsi" id="deskripsi" placeholder="Deskripsi" value="<?php echo $deskripsi; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('log_user') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        </div>
</div>
</div>