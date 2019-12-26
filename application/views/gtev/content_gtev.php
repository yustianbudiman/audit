<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-solid">
                    <div class="box-header with-border">
                      <i class="fa fa-text-width"></i>

                      <h3 class="box-title">GTEV (<?php echo str_replace('_', ' ', $cat);?>)</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                     <table class="table table-bordered" id="table_gtev">
                         <thead>
                             <th style="text-align: center;width: 4%;">No</th>
                             <th style="text-align: center;">kategori</th>
                             <th style="text-align: center;">Total</th>
                             <th style="text-align: center;">Rating</th>
                         </thead>
                         <tbody>
                            <?php $no=1; foreach ($list_gtev as $key) { ?>
                             <tr>
                                 <td><?php echo $no; ?></td>
                                 <td><?php echo $key['kategori'] ?></td>
                                 <td style="text-align: right;"><?php echo ($key['kategori']=='GTEV'?number_format((float)$key['total_'],2,',','.'):$key['total_']); ?></td>
                                 <td><?php echo $key['bobot_resiko'] ?></td>
                             </tr>
                         <?php $no++; } ?>
                         </tbody>
                     </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                  <!-- /.box -->
              </div>
            
            <div class="col-lg-12">
                <div class="box box-solid">
                    <div class="box-header with-border">
                      <i class="fa fa-text-width"></i>

                      <h3 class="box-title">Detail</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-hover" id="detail_cat_bisnis" style="font-size: 12px;">
                            <thead>
                                <tr>
                                    <th style="width: 5%;text-align: center;">No</th>
                                    <th style="text-align: center;">Temuan</th>
                                    <th style="text-align: center;">Klasifikasi</th>
                                    <th style="text-align: center;">Penyimpangan</th>
                                    <th style="text-align: center;">Total Impact</th>
                                    <th style="text-align: center;">Bobot_resiko</th>
                                    <th style="text-align: center;">TEV</th>
                                    <th style="text-align: center;">Cont. Env.</th>
                                    <th style="text-align: center;">Risk Asses</th>
                                    <th style="text-align: center;">Cont Act</th>
                                    <th style="text-align: center;">Inf Comunication</th>
                                    <th style="text-align: center;">Monitoring</th>
                                    <?php if($cat=='cat_binis'){ ?>
                                    <th style="text-align: center;">Goal Strategic</th>
                                    <?php } ?>
                                    <th style="text-align: center;">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; foreach ($list_all_cat_detail as $key) { ?>
                                <tr>
                                    <td><?php echo $no;?></td>
                                    <td><?php echo $key['temuan'];?></td>
                                    <td><?php echo $key['nama_klasifikasi_temuan'];?></td>
                                    <td><?php echo $key['nama_penyimpangan'];?></td>
                                    <td style="text-align: right;"><?php echo $key['total_impact'];?></td>
                                    <td><?php echo $key['bobot_resiko'];?></td>
                                    <td style="text-align: right;"><?php echo $key['tev'];?></td>
                                    <td><?php echo $key['environment_value'];?></td>
                                    <td><?php echo $key['risk_assesment_value'];?></td>
                                    <td><?php echo $key['control_activities_value'];?></td>
                                    <td><?php echo $key['information_comunication_value'];?></td>
                                    <td><?php echo $key['monitoring_value'];?></td>
                                    <?php if($cat=='cat_binis'){ ?>
                                    <td><?php echo $key['goal_strategic_value'];?></td>
                                    <?php } ?>
                                    <td style="text-align: center;"><label class="label label-warning"><?php echo $key['status_trx'];?></label></td>
                                <?php $no++; } ?>
                            </tbody>
                        </table>
                        <a href="<?php echo base_url('gtev');?>" class="btn btn-primary btn-sm btn-flat" style="margin-top: 10px;">Back</a>
                    </div>
                    <!-- /.box-body -->
                </div>
                  <!-- /.box -->
              </div>
            
        </div>
    </section>
</div>


<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>
