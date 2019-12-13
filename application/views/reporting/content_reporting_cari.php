<table class="table table-bordered table-hover" id="dteail_cat_bisnis" style="font-size: 12px;">
    <thead>
        <tr>
            <th style="width: 5%;text-align: center;">No</th>
            <th style="text-align: center;">Temuan</th>
            <th style="text-align: center;">Klasifikasi</th>
            <th style="text-align: center;">Penyimpangan</th>
            <th style="text-align: center;">Total Impact</th>
            <th style="text-align: center;">Bobot Resiko</th>
            <th style="text-align: center;">TEV</th>
            <th style="text-align: center;">Rekomendasi</th>
            <th style="text-align: center;">Tanggapan</th>
            <th style="text-align: center;">Target Date</th>
            <th style="text-align: center;">Member</th>
            <th style="text-align: center;">Status</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        if(count($list_audit)>=1){
        $no=1; foreach ($list_audit as $key) { ?>
            <tr>
                <td><?php echo $no;?></td>
                <td><?php echo $key['temuan'];?></td>
                <td><?php echo $key['nama_klasifikasi_temuan'];?></td>
                <td><?php echo $key['nama_penyimpangan'];?></td>
                <td style="text-align: right;"><?php echo $key['total_impact'];?></td>
                <td><?php echo $key['repeated'];?></td>
                <td style="text-align: right;"><?php echo $key['tev'];?></td>
                <td><?php echo $key['rekomendasi'];?></td>
                <td><?php echo $key['tanggapan_audit'];?></td>
                <td><?php echo date('d-M-Y',strtotime($key['target_date']));?></td>
                <td><?php echo get_member($key['member'])['nama_member'];?></td>
                <td style="text-align: center;"><label class="label label-warning"><?php echo $key['status_trx'];?></label></td>
            </tr>
            <?php $no++; } 
        }else{
            ?>
        <tr>
            <td colspan="12" style="text-align: center;">Data not found</td>
        </tr>
        <?php } ?>
    </tbody>
</table>
<?php echo $document; ?>