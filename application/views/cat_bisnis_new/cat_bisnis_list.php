<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                 <?php if($this->session->flashdata('message')['pesan']){ ?>
                                
                    <?php echo "<div class='row'>"; ?>
                    <?php echo "<div class='col-md-12'>"; ?>
                    <?php echo "<div class='alert ".$this->session->flashdata('message')['type']."' style='background-color:#f24e53; color: white;'>".$this->session->flashdata('message')['pesan']."</div>"; ?>
                    <?php echo "</div>"; ?>
                    <?php echo "</div>"; ?>

                <?php } ?>
                <div class="box box-info ">
                    <div class="box-header">
                        <h3 class="box-title">MANAGE
                            <small>Data CAT Bisnis</small>
                        </h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <a href="<?php echo site_url('welcome') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div style="padding-bottom: 10px;">
                        <?php echo anchor(site_url('cat_bisnis_new/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); ?>
                        <?php echo anchor(site_url('cat_bisnis_new/excel'), '<i class="fa fa-file-excel-o" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-success btn-sm"'); ?>
                        <?php echo anchor(site_url('cat_bisnis_new/word'), '<i class="fa fa-file-word-o" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-warning btn-sm"'); ?>
                    </div>
                    <table class="table table-sm table-bordered table-hover" id="mytable" style="margin-right: 10px;">
                        <thead>
                            <tr>
                                <th width="30px">No</th>
                                <th style="text-align: center;">Kode Cabang</th>
                                <th style="text-align: center;">Nama Cabang</th>
                                <th style="text-align: center;">Temuan</th>
                                <th style="text-align: center;">Kategori Temuan</th>
                                <th style="text-align: center;">Dampak</th>
                                <th style="text-align: center;">Sebab Penyimpangan</th>
                                <th style="text-align: center;">TEV</th>
                                <th style="text-align: center;">Bobot resiko</th>
                                <th style="text-align: center;">Rekomendasi</th>
                                <th style="text-align: center;">Tanggapan</th>
                                <th style="text-align: center;">Target Date</th>
                                <th style="text-align: center;">Status</th>
                                <th style="text-align: center;">Tanggal Input CAT</th>
                                <th style="text-align: center;">User Input</th>
                                <th width="200px">Action</th>
                            </tr>
                        </thead>
                    
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<style type="text/css">
    th, td {
    white-space: nowrap;
}
</style>

<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings)
                {
                    return {
                        "iStart": oSettings._iDisplayStart,
                        "iEnd": oSettings.fnDisplayEnd(),
                        "iLength": oSettings._iDisplayLength,
                        "iTotal": oSettings.fnRecordsTotal(),
                        "iFilteredTotal": oSettings.fnRecordsDisplay(),
                        "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
                        "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
                    };
                };

                var t = $("#mytable").dataTable({
                    initComplete: function() {
                        var api = this.api();
                        $('#mytable_filter input')
                                .off('.DT')
                                .on('keyup.DT', function(e) {
                                    if (e.keyCode == 13) {
                                        api.search(this.value).draw();
                            }
                        });
                    },
                    oLanguage: {
                        sProcessing: "loading..."
                    },
                    processing: true,
                    serverSide: true,
                    scrollY:        "300px",
                    scrollX:        true,
                    scrollCollapse: true,
                    fixedColumns: true,
                    ajax: {"url": "cat_bisnis_new/json", "type": "POST"},
                    columns: [
                        {
                            "data": "id_cat_bisnis",
                            "orderable": false
                        },
                        {"data": "kode_cabang"},
                        {"data": "nama_cabang"},
                        {"data": "temuan"},
                        {"data": "nama_klasifikasi_temuan"},
                        {"data": "dampak"},
                        {"data": "nama_penyimpangan"},
                        {"data": "tev"},
                        {"data": "bobot_resiko"},
                        {"data": "rekomendasi"},
                        {"data": "tanggapan_audit"},
                        {"data": "target_date"},
                        {"data": "status_trx"},
                        {"data": "created_date"},
                        {"data": "full_name"},
                        {
                            "data" : "action",
                            "orderable": false,
                            "className" : "text-center"
                        }
                    ],
                    order: [[0, 'desc']],
                    rowCallback: function(row, data, iDisplayIndex) {
                        var info = this.fnPagingInfo();
                        var page = info.iPage;
                        var length = info.iLength;
                        var index = page * length + (iDisplayIndex + 1);
                        $('td:eq(0)', row).html(index);
                        $('td:eq(12)', row).html("<label class='label label-warning'>"+data.status_trx+"</label>");
                    }
                });
            });
        </script>