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
        <h2 style="margin-top:0px">Tbl_log_user Read</h2>
        <table class="table">
	    <tr><td>Id User</td><td><?php echo $id_user; ?></td></tr>
	    <tr><td>Tgl Log History</td><td><?php echo $tgl_log_history; ?></td></tr>
	    <tr><td>Action</td><td><?php echo $action; ?></td></tr>
	    <tr><td>Data</td><td><?php echo $data; ?></td></tr>
	    <tr><td>Deskripsi</td><td><?php echo $deskripsi; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('log_user') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
        </body>
</html>