
<!DOCTYPE html>
<html lang="en" class="no-js cookie_used_true">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>KOKNABA Login</title>

    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic' rel='stylesheet'>
    <link rel="stylesheet" media="all" href="<?php echo base_url(); ?>assets/login/css/global.css" />
    <link rel="stylesheet" media="all" href="<?php echo base_url(); ?>assets/login/css/page.css" />
    <link rel="stylesheet" media="screen" href="<?php echo base_url(); ?>assets/login/css/form.css" />
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/login/img/favicon.ico" />

</head>

<body class="body-login" >

    <div class="login-wrap">

        <header class="login-header">
            <h2 class="little-big-header">Log in!</h2>
        </header>

      <div class="flex-grid">

        <div class="login-half left">
          
          <div class="login-area">

            <?php
            $status_login = $this->session->userdata('status_login');
            if (empty($status_login)) {
                $message = "You must be logged in to take this action.";
            } else {
                $message = $status_login;
            }
            ?>
            <div class="login-error-message">
                <?php echo $message; ?>
            </div>

            <form class="login-form top-label-form" id="login-login-form" action="auth/cheklogin" accept-charset="UTF-8" method="post">
              
              <div id="login-email" class="field">
                <label for="login-email-field">Email</label>
                <input type="text" name="email" id="email_login" value="" required="required" />
              </div>

              <div id="login-password" class="field">
                <label for="login-password-field">Password</label>
                <input name="password" required="required" type="password" id="password_login" />
              </div>

              <div id="login-error"></div>

              <div>
                <label class="spacing-label">&nbsp;</label>

                <button id="log-in-button" type="submit" class="recaptcha-trigger-button button green action-button expand-right">
                  <span class="label">Log in</span>
                  <span class="spinner"></span>
                </button>
              </div>

            </form>



          </div>

        </div>

        <div class="login-divider">
          <div class="bar bar-top"></div>
          <span class="login-or">>></span>
          <div class="bar bar-bottom"></div>
        </div>

        <div class="login-half right">

          <div class="module social-auth-errors" id="login-social-auth-errors"></div>

          <div class="login-social-buttons">

            
            <img src="<?php echo base_url()?>/assets/img/logo_login.png">
            
          </div>

        </div>

      </div>

    </div>

</body>

</html>
