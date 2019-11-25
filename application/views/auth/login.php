<!DOCTYPE html>
<html lang="en" class="no-js cookie_used_true">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Audit Portal Login</title>

    <?php /*<link href='<?php echo base_url(); ?>assets/login/css/lato.css' rel='stylesheet'>*/?>
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic' rel='stylesheet'>
    <link rel="stylesheet" media="all" href="<?php echo base_url(); ?>assets/login/css/global.css" />
    <link rel="stylesheet" media="all" href="<?php echo base_url(); ?>assets/login/css/page.css" />
    <link rel="stylesheet" media="screen" href="<?php echo base_url(); ?>assets/login/css/form.css" />
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/login/img/favicon.ico" />

</head>

<body class="body-login" >

    <div class="login-wrap">

        <header class="login-header">
            <h5 class="little-big-header">SELAMAT DATANG</h5>
            <h4 class="little-small-header">DI LAYANAN INFORMASI AUDIT PORTAL</h3>
        </header>

      <div class="flex-grid">

        <div class="login-half left">
          
          <div class="login-area">

            <?php
            $status_login = $this->session->userdata('status_login');
            if (empty($status_login)) {
                $message = "Silahkan login untuk melanjutkan";
            } else {
                $message = $status_login;
            }
            ?>
            <div class="login-error-message">
                <?php echo $message; ?>
            </div>

            <form class="top-label-form" action="auth/cheklogin" id="form_login" accept-charset="UTF-8" method="post">
              
              <div id="login-email" class="field">
                <label for="login-email-field">Email</label>
                <input type="text" name="email" id="email_login" value="" required="required" onkeypress="return runScript(event)"/>
                <span style="color: red"><?php echo form_error('email') ?></span>
              </div>

              <div id="login-password" class="field">
                <label for="login-password-field">Password</label>
                <input name="password" required="required" type="password" id="password_login"/>
                <span style="color: red"><?php echo form_error('password') ?></span>
              </div>

              <div id="login-error"></div>

              <div>
                <label class="spacing-label">&nbsp;</label>

                <button type="submit" class="button green" id="button_submit">
                  <span class="label">Login</span>
                  <span class="spinner"></span>
                </button>
              </div>

            </form>
          </div>

        </div>

        <?php /*<div class="login-divider">
          <div class="bar bar-top"></div>
          <span class="login-or">>></span>
          <div class="bar bar-bottom"></div>
        </div>*/?>

        <div class="login-half right">

          <div class="module social-auth-errors" id="login-social-auth-errors"></div>

          <div class="login-social-buttons">

            
            <?php /*<img src="<?php echo base_url()?>/assets/img/logo_login.png">*/ ?>
            
          </div>

        </div>

      </div>

    </div>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-1.9.1.min.js"></script>
    <!-- <script src="<?php //echo base_url(); ?>assets/login/js/everypage.js"></script> -->
    <script src="<?php echo base_url(); ?>assets/login/js/login.js"></script>

    <script type="text/javascript">
      function cek_login(){
        var email_login = $("#email_login").val();
        var password_login = $("#password_login").val();
        if(email_login == "" || password_login == ""){
          $("#forgot-password-form").css("display","none");
          alert("Email dan password harus diisi.");
          return false;
        }else if(!validateEmail(email_login)){
          $("#forgot-password-form").css("display","none");
          alert("Format email salah.");
          return false;
        }else{
          $("#forgot-password-link").click();
        }
      }

      function runScript(e) {
          //See notes about 'which' and 'key'
          if (e.keyCode == 13) {
              // cek_login();
              return false;
          }
      }

      function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
      }

      function validateEmail(email) 
      {
          var re = /\S+@\S+\.\S+/;
          return re.test(email);
      }
      function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57)){
          return false;
        }
        if (iKeyCode == 13) {
            $("#form_login").submit();
        }

        return true; //onkeypress="return isNumberKey(event)"
      } 
    </script>

</body>

</html>
