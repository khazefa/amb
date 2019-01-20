<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>AMB | Log in</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/bootstrap/dist/css/bootstrap.min.css');?>">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/font-awesome/css/font-awesome.min.css');?>">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/Ionicons/css/ionicons.min.css');?>">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo resource_url('/assets/css/AdminLTE.min.css');?>">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?php echo resource_url('/assets/plugins/iCheck/square/blue.css');?>">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

	<script src='https://www.google.com/recaptcha/api.js'></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
	<div class="login-logo">
		<a href="<?= base_url();?>"><b>A</b>MB</a>
	</div>
	<!-- /.login-logo -->
	<div class="login-box-body">
		<p class="login-box-msg">
			<?php echo empty($this->session->flashdata('error_login')) ? 'Sign in to start your session': '<span class="text-danger">'.$this->session->flashdata('error_login').'</span>'; ?>
		</p>
		<span></span>
		<form action="<?php echo site_url('backend'); ?>" method="post">
			<div class="form-group has-feedback">
				<input type="text" name="username" class="form-control" placeholder="Username" required="required">
				<span class="glyphicon glyphicon-user form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" name="password" class="form-control" placeholder="Password" required="required">
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<?php
				if(is_localhost()){
					// google recaptcha cannot be shown in localhost
				}else {
					?>
					<div class="form-group has-feedback">
						<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_key') ?>"></div>
					</div>
					<?php
				}
			?>
			<div class="row">
				<!--
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<label>
							<input type="checkbox"> Remember Me
						</label>
					</div>
				</div>
				-->
				<!-- /.col -->
				<div class="col-xs-4">
					<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
				</div>
				<!-- /.col -->
			</div>
		</form>

		<a href="#">I forgot my password</a><br>

	</div>
	<!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?php echo resource_url('/bower_components/jquery/dist/jquery.min.js');?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo resource_url('/bower_components/bootstrap/dist/js/bootstrap.min.js');?>"></script>
<!-- iCheck -->
<script src="<?php echo resource_url('/assets/plugins/iCheck/icheck.min.js');?>"></script>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' /* optional */
		});
	});
</script>
</body>
</html>
