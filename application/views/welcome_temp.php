<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>KOKNABA</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/jquery-ui/themes/base/minified/jquery-ui.min.css" type="text/css" />
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/select2/dist/css/select2.min.css">
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/skins/_all-skins.min.css">

        <style type="text/css">
            .content-wrapper{
                background-image: url("<?php echo base_url()?>assets/img/logo.png");
                background-repeat: no-repeat;
                background-position-x : center;
                background-position-y : center;
                /*opacity: 0.5;*/
                /*filter: alpha(opacity=50);*/
                /*z-index: 1000000;*/
            }
        </style>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <!-- <link rel="stylesheet" href="<?php //echo base_url(); ?>assets/css/source-san.css"> -->
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/login/img/favicon.ico" />
    </head>
    <body class="hold-transition sidebar-mini skin-blue-light sidebar-collapse">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="<?php echo base_url() ?>" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini" style="margin-top: -2px;"><img src="<?php echo base_url()?>assets/img/logo_koknaba.jpg" width="50px"></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><img src="<?php echo base_url()?>assets/img/logo-white-repeat.png" width="50px" style="margin-top: -10px;"><b>KOKNABA </b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" style="background-color: #1976d2">
                    <!-- Sidebar toggle button-->
                    <?php /*<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>*/?>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">                          
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <?php if($this->session->userdata('images')){ ?>
                                        <img src="<?php echo base_url() ?>assets/foto_profil/<?php echo $this->session->userdata('images'); ?>" class="user-image" alt="User Image">
                                    <?php }else{ ?>
                                        <img src="<?php echo base_url() ?>assets/foto_profil/atomix_user31.png" class="user-image" alt="User Image">
                                    <?php }?>
                                    
                                    <span class="hidden-xs"><?php echo $this->session->userdata('full_name'); ?> </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <?php if($this->session->userdata('images')){ ?>
                                            <img src="<?php echo base_url() ?>assets/foto_profil/<?php echo $this->session->userdata('images'); ?>" class="img-circle" alt="User Image">
                                        <?php }else{ ?>
                                            <img src="<?php echo base_url() ?>assets/foto_profil/atomix_user31.png" class="img-circle" alt="User Image">
                                        <?php }?>

                                        <p>
                                            <?php echo $this->session->userdata('full_name'); ?>                                         
                                            <small>Member since <?php echo date('d F Y', strtotime($this->session->userdata('tgl_daftar')));?></small>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <?php echo anchor('welcome/read', 'Profile', array('class' => 'btn btn-default btn-flat')); ?>
                                            <!--<a href="#" class="btn btn-default btn-flat">Profile</a>-->
                                        </div>
                                        <div class="pull-right">
                                            <?php echo anchor('auth/logout', 'Logout', array('class' => 'btn btn-default btn-flat')); ?>
                                            <!--<a href="#" class="btn btn-default btn-flat">Sign out</a>-->
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <?php /*<aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <?php $this->load->view('template/sidebar'); ?>
            </aside>*/?>

            <div class="content-wrapper">
                <section class="content">
                    <?php //echo alert('alert-info', 'Selamat Datang', 'Selamat Datang Di Halaman Utama KOKNABA')?>
                    <div class="row">
                        <!-- ./col -->
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-yellow">
                            <div class="inner">
                              <h3><?php if($jml_sekolah){ echo $jml_sekolah; }else{ echo "0";}?></h3>

                              <h4>Profil sekolah</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-home"></i>
                            </div>
                            <?php if($this->session->userdata('id_user_level') == 3){ // user sekolah?>
                                <a href="<?php echo site_url();?>profile" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                            <?php }else{ ?>
                                <a href="<?php echo site_url();?>sekolah" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                            <?php } ?>
                            
                          </div>
                        </div>
                        <?php if($this->session->userdata('id_user_level') == 3){ ?>
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-red">
                            <div class="inner">
                              <h3><?php if($jml_pendidik){ echo $jml_pendidik; }else{ echo "0";}?></h3>

                              <h4>Data Pendidik</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-person-add"></i>
                            </div>
                            <a href="<?php echo site_url();?>pendidik_sekolah" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                          </div>
                        </div>
                        <?php }else{ ?>
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-red">
                            <div class="inner">
                              <h3><?php if($jml_pendidik){ echo $jml_pendidik; }else{ echo "0";}?></h3>

                              <h4>Data Pendidik</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-person-add"></i>
                            </div>
                            <a href="<?php echo site_url();?>pendidik" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                          </div>
                        </div>
                        <?php } ?>
                        
                        <!-- ./col -->
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-green">
                            <div class="inner">
                              <h3>0<sup style="font-size: 20px"></sup></h3>

                              <h4>Data Rombel</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                          </div>
                        </div>
                        
                        <!-- ./col -->
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-aqua">
                            <div class="inner">
                              <h3>0</h3>

                              <h4>Data Sarpras</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-document-text"></i>
                            </div>
                            <a href="#" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                          </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-4 col-xs-6">
                          <!-- small box -->
                          <div class="small-box bg-purple">
                            <div class="inner">
                              <h3>0</h3>

                              <h4>Data Bos</h4>
                            </div>
                            <div class="icon">
                              <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">Lihat Data Lengkap <i class="fa fa-arrow-circle-right"></i></a>
                          </div>
                        </div>
                        
                        <!-- ./col -->
                    </div>
                </section>
            </div>
            <script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
            <script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
            <script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>


            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1
                </div>
                <strong>Copyright &copy; <?php echo date('Y')?> <a href="<?php echo site_url();?>welcome">KOKNABA</a>.</strong> All rights reserved.
            </footer>

            <!-- Control Sidebar -->
            
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
        <script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() ?>assets/jquery-ui/ui/minified/jquery-ui.min.js"></script>
        <!-- jQuery 3
        <script src="<?php //echo base_url() ?>assets/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
         -->
        <!-- Bootstrap 3.3.7 -->
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- DataTables -->
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="<?php echo base_url() ?>assets/adminlte/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo base_url() ?>assets/adminlte/dist/js/demo.js"></script>
        <!-- Select2 -->
        <script src="<?php echo base_url() ?>assets/adminlte/bower_components/select2/dist/js/select2.full.min.js"></script>
        <!-- page script -->
        <script>
            $(function () {
                $('.select2').select2()
                $('#example1').DataTable()
                $('#example2').DataTable({
                    'paging'      : true,
                    'lengthChange': false,
                    'searching'   : false,
                    'ordering'    : true,
                    'info'        : true,
                    'autoWidth'   : false
                })
            })
        </script>
    </body>
</html>

