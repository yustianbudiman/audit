

<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-lg-10">
                <?php if($this->session->flashdata('message')['pesan']){ ?>
                                
                    <?php echo "<div class='row'>"; ?>
                    <?php echo "<div class='col-md-12'>"; ?>
                    <?php echo "<div class='alert ".$this->session->flashdata('message')['type']."' style='color: white;'>".$this->session->flashdata('message')['pesan']."</div>"; ?>
                    <?php echo "</div>"; ?>
                    <?php echo "</div>"; ?>

                <?php } ?>
                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title"><?php echo $button ?>
                            <small>Data Pengguna</small>
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
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

                            <table class='table table-bordered table-hover'> 
                                 <?php if($images != "" || $images != null){ ?>
                                    <tr><td colspan="2"><center><img src="<?php echo base_url()?>assets/foto_profil/<?php echo $images; ?>" width="200px" class="user-image"></center></td></tr>
                                <?php }else{ ?>
                                    <tr><td colspan="2"><center><img src="<?php echo base_url()?>assets/foto_profil/atomix_user31.png" width="200px" class="user-image"></center></td></tr>
                                <?php }?>       

                                <tr><td width='200'>NIK </td>
                                    <td><input type="text" class="form-control" name="nik" id="nik" placeholder="NIK" onkeypress="return isNumber(event)" value="<?php echo $nik; ?>" maxlength="16" /><?php echo form_error('nik') ?></td>
                                </tr>
                                <tr><td width='200'>Nama Lengkap </td>
                                    <td><input type="text" class="form-control" name="full_name" id="full_name" placeholder="Full Name" value="<?php echo $full_name; ?>" /><?php echo form_error('full_name') ?></td>
                                </tr>
                                <tr><td width='200'>No HP </td>
                                    <td><input type="text" class="form-control" name="no_hp" id="no_hp" maxlength="15" placeholder="No HP" onkeypress="return isNumber(event)" value="<?php echo $no_hp; ?>" /><span id="notif_no_hp"></span><?php echo form_error('no_hp') ?></td>
                                </tr>
                                <tr><td width='200'>Email </td>
                                    <td><input type="text" class="form-control" name="email" id="email" placeholder="Email" value="<?php echo $email; ?>" /><span id="notif_email"></span><?php echo form_error('email') ?></td>
                                </tr>

                                <tr><td width='200'>Password </td>
                                    <td><input type="password" class="form-control" name="password" id="password" placeholder="Password" /><i>Kosongkan jika tidak ingin diubah</i> 
                                    <?php echo form_error('password') ?></td></tr>
                                    
                                <tr><td width='200'>Level User </td><td>
                                        <?php //echo cmb_dinamis('id_user_level', 'tbl_user_level', 'nama_level', 'id_user_level', $id_user_level,'DESC');
                                        $this->db->order_by("nama_level","ASC");
                                        if($this->session->userdata("id_user_level") == 3 || $this->session->userdata("id_user_level") == 4){ //sekolah / dinas
                                            $this->db->where("id_user_level !=",1);
                                            $this->db->where("id_user_level !=",2);
                                            $sql_level = $this->db->get("tbl_user_level")->result();
                                        }else if($this->session->userdata("id_user_level") == 2){
                                            $this->db->where("id_user_level !=",1);
                                            $sql_level = $this->db->get("tbl_user_level")->result();
                                        }else{
                                            $sql_level = $this->db->get("tbl_user_level")->result();
                                        }
                                            
                                         ?>
                                        <select name="id_user_level" id="id_user_level" class="form-control" required>
                                            <option value="">- Select -</option>
                                            <?php foreach ($sql_level as $d){ 
                                                if($id_user_level == $d->id_user_level){ ?>
                                                    <option value="<?php echo $d->id_user_level?>" selected><?php echo $d->nama_level?></option>
                                                <?php }else{ ?>
                                                    <option value="<?php echo $d->id_user_level?>"><?php echo $d->nama_level?></option>
                                                <?php }
                                                ?>
                                                
                                            <?php } ?>
                                        </select>
                                        <?php echo form_error('id_user_level') ?>
                                    </td></tr>
                                <tr id="cabang_id" ><td width='200'>Cabang </td>
                                    <td>
                                        <?php echo cmb_dinamis('id_cabang', 'cabang', 'nama_cabang', 'id_cabang', $id_cabang,'ASC') ?>
                                        <?php echo form_error('id_cabang') ?>
                                    </td>
                                </tr>
                                <tr id="divisi_id"><td width='200'>Divisi </td>
                                    <td>
                                        <?php echo cmb_dinamis('id_divisi', 'divisi', 'divisi', 'id_divisi', $id_divisi,'ASC') ?>
                                        <?php echo form_error('id_divisi') ?>
                                    </td>
                                </tr>
                                <tr><td width='200'>Status Aktif </td><td>
                                        <?php echo form_dropdown('is_aktif', array('y' => 'AKTIF', 'n' => 'TIDAK AKTIF'), $is_aktif, array('class' => 'form-control')); ?>
                                        <?php echo form_error('is_aktif') ?>
                                    </td></tr>
                                <tr><td></td><td><input type="hidden" name="id_users" value="<?php echo $id_users; ?>" /> 
                                        <button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
                                        <a href="<?php echo site_url('welcome') ?>" class="btn btn-warning"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>    
        </div>
    </div>
</div>
<style type="text/css">
.loader {
    border: 16px solid #f3f3f3; /* Light grey */
    border-top: 16px solid blue;
    /*border-bottom: 16px solid blue;*/
    border-radius: 50%;
    width: 40px;
    height: 40px;
    animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
</style>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        $("#no_hp").change(function(){
            var email = $('#email').val();
            var no_hp = $('#no_hp').val();
            if(no_hp == ""){
                alert("No HP tidak boleh kosong");
                return false;
            }else if(email == ""){
                alert("Email tidak boleh kosong");
                return false;
            }else{
                $.ajax({
                    type: "POST", // Method pengiriman data bisa dengan GET atau POST
                    url: "<?php echo base_url("index.php/welcome/getEmailHP"); ?>", // Isi dengan url/path file php yang dituju
                    data: {email : email, no_hp:no_hp, id_users:"<?php echo $id_users?>"}, // data yang akan dikirim ke file yang dituju
                    dataType: "json",
                    beforeSend: function(e) {
                      if(e && e.overrideMimeType) {
                        e.overrideMimeType("application/json;charset=UTF-8");
                      }
                    },
                    success: function(response){ // Ketika proses pengiriman berhasil
                      //$("#loading").hide(); // Sembunyikan loadingnya
                      // set isi dari combobox kota
                      // lalu munculkan kembali combobox kotanya
                      $("#notif_no_hp").html(response.notif_no_hp).show();
                      $("#notif_email").html(response.notif_email).show();
                    },
                    error: function (xhr, ajaxOptions, thrownError) { // Ketika ada error
                      alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError); // Munculkan alert error
                    }
                });
            }
            
            
            
        }); 
    });
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true; //onkeypress="return isNumberKey(event)"
    } 

    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0).slideUp(500, function(){
            $(this).remove(); 
        });
    }, 10000);
</script>