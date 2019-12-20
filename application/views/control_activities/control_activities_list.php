<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <?php if($this->session->flashdata('message')['pesan']){ ?>
                                
                    <?php echo "<div class='row'>"; ?>
                    <?php echo "<div class='col-md-12'>"; ?>
                    <?php echo "<div class='alert ".$this->session->flashdata('message')['type']."' style='color: white;'>".$this->session->flashdata('message')['pesan']."</div>"; ?>
                    <?php echo "</div>"; ?>
                    <?php echo "</div>"; ?>

                <?php } ?>
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title">MANAGE
                            <small>Data Control Activities</small>
                        </h3>
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <a href="<?php echo site_url('welcome') ?>" class="btn btn-warning btn-sm"><i class="fa fa-angle-double-left"></i></a>
                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                        </div>
                        <!-- /. tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body pad" style="overflow: auto;">
                        <div style="padding-bottom: 10px; overflow: auto;">
                        <?php echo anchor(site_url('control_activities/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); ?>
                        <?php echo anchor(site_url('control_activities/excel'), '<i class="fa fa-file-excel-o" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-success btn-sm"'); ?>
                    </div>
                    <table class="table table-bordered table-hover" id="mytable">
                        <thead>
                            <tr>
                                <th width="30px">No</th>
                    		    <th>Nama control Activities</th>
                    		    <th>Keterangan</th>
                    		    <th>Aktif</th>
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
                    ajax: {"url": "control_activities/json", "type": "POST"},
                    columns: [
                        {
                            "data": "id_control_activities",
                            "orderable": false
                        },
                        {"data": "nama_control_activities"},
                        {"data": "keterangan"},
                        {"data": "aktif"},
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