

<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title">MANAGE
                            <small>Otorisasi</small>
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
                    <div class="box-body pad">
                        <?php if($this->session->flashdata('message')){ ?>
                                        
                            <?php echo "<div class='row'>"; ?>
                            <?php echo "<div class='col-md-12'>"; ?>
                            <?php echo "<div class='alert ' style='background-color:#f24e53; color: white;'>".$this->session->flashdata('message')."</div>"; ?>
                            <?php echo "</div>"; ?>
                            <?php echo "</div>"; ?>

                        <?php } ?>
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                              <li class="active"><a href="#tab_bisnis" data-toggle="tab">Cat Bisnis</a></li>
                              <li><a href="#tab_operasional" data-toggle="tab">Cat Operasional</a></li>
                            </ul>
                            <div class="tab-content">
                              <!-- tab 1 -->
                            <div class="tab-pane active" id="tab_bisnis">
                                <table class="table table-bordered table-hover" id="tbl_bisnis" width="100%">
                                    <thead>
                                        <tr>
                                            <th width="30px">No</th>
                                            <th>Periode</th>
                                            <th>Kode Cabang</th>
                                            <th>Nama Cabang</th>
                                            <th width="200px">Action</th>
                                        </tr>
                                    </thead>
                                
                                </table>
                            </div>
                            <div class="tab-pane" id="tab_operasional">
                                <table class="table table-bordered table-hover" id="tbl_operasional" width="100%">
                                    <thead>
                                        <tr>
                                            <th width="30px">No</th>
                                            <th>Periode</th>
                                            <th>Kode Cabang</th>
                                            <th>Nama Cabang</th>
                                            <th width="200px">Action</th>
                                        </tr>
                                    </thead>
                                
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>



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

                var t = $("#tbl_bisnis").dataTable({
                    initComplete: function() {
                        var api = this.api();
                        $('#tbl_bisnis_filter input')
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
                    ajax: {"url": "otorisasi/json_bisnis", "type": "POST"},
                    columns: [
                        {
                            "data": "id_cat_bisnis_header",
                            "orderable": false
                        },{"data": "periode"},{"data": "kode_cabang"},{"data": "nama_cabang"},
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
                    }
                });

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

                var t = $("#tbl_operasional").dataTable({
                    initComplete: function() {
                        var api = this.api();
                        $('#tbl_operasional_filter input')
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
                    ajax: {"url": "otorisasi/json_operasional", "type": "POST"},
                    columns: [
                        {
                            "data": "id_cat_operasional_header",
                            "orderable": false
                        },{"data": "periode"},{"data": "kode_cabang"},{"data": "nama_cabang"},
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
                    }
                });
            });
        </script>