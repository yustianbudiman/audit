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
        <h2 style="margin-top:0px">Status_trx Read</h2>
        <table class="table">
	    <tr><td>Status Trx</td><td><?php echo $status_trx; ?></td></tr>
	    <tr><td>Aktif</td><td><?php echo $aktif; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('status_trx') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
        </body>
</html>