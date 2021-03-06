<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?= (isset($pageTitle) && !empty($pageTitle)) ? APP_NAME . " - " .$pageTitle : APP_NAME;?></title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/bootstrap/dist/css/bootstrap.min.css');?>">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/font-awesome/css/font-awesome.min.css');?>">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/Ionicons/css/ionicons.min.css');?>">
	<!-- DataTables -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/datatables.net-bs/css/dataTables.bootstrap.css');?>">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo resource_url('/assets/css/AdminLTE.min.css');?>">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<?php echo resource_url('/assets/css/skins/_all-skins.min.css');?>">

	<!-- Bootstrap Select -->
	<link rel="stylesheet" href="<?php echo resource_url('/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css');?>">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

	<link rel="icon" href="<?php echo resource_url('/assets/img/icons8-google-480.png');?>">

	<!-- jQuery 3 -->
	<script src="<?php echo resource_url('/bower_components/jquery/dist/jquery.min.js');?>"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?php echo resource_url('/bower_components/bootstrap/dist/js/bootstrap.min.js');?>"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

	<header class="main-header">
		<!-- Logo -->
		<a href="<?= base_url();?>" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>MB</span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><?= APP_NAME;?></span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>

			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?php echo $this->config->item('upload_path').'imgx/avatar04.png';?>" class="user-image" alt="User Image">
							<span class="hidden-xs">
								<?php
									echo $name." - ".$type;
								?>
							</span>
						</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header">
								<img src="<?php echo $this->config->item('upload_path').'imgx/avatar04.png';?>" class="img-circle" alt="User Image">

								<p>
									<?php
										echo $name." - ".$type;
									?>
								</p>
							</li>
							<!-- Menu Body -->
							<!-- Hide this for some undefined time
							<li class="user-body">
								<div class="row">
									<div class="col-xs-4 text-center">
										<a href="#">Followers</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Sales</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Friends</a>
									</div>
								</div>
							</li>
							-->
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="<?= base_url('backend/users/profile') ?>" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="<?= base_url('backend/signout');?>" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<!-- =============================================== -->

	<!-- Left side column. contains the sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="<?php echo $this->config->item('upload_path').'imgx/avatar04.png';?>" class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info"><br>
					<p><?php echo $name." - ".$type; ?></p>
					<!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a>-->
				</div>
			</div>
			<!-- search form -->
			<!--
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
				</div>
			</form>
			-->
			<!-- /.search form -->
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">MAIN NAVIGATION</li>
				<li><a href="<?= base_url('backend/dashboard');?>"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
				<!--
				<li class="treeview">
					<a href="#">
						<i class="fa fa-share"></i> <span>Multilevel</span>
						<span class="pull-right-container">
              				<i class="fa fa-angle-left pull-right"></i>
            			</span>
					</a>
					<ul class="treeview-menu">
						<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
						<li class="treeview">
							<a href="#"><i class="fa fa-circle-o"></i> Level One
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
								<li class="treeview">
									<a href="#"><i class="fa fa-circle-o"></i> Level Two
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
										<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
					</ul>
				</li>
				-->

				<?php
				/*
				// menu dynamic version 1 bro
				$is_mod_role = "";
				$arr_role = !empty($role) ? explode (",", $role) : array();
				$modul = $this->db->order_by('mod_sort', 'ASC')->get_where('module', array('mod_has_parent' => 0,'mod_active'=>1));
				foreach ($modul->result() as $m) {
					// check for sub module
					$submenu = $this->db->order_by('mod_sort', 'ASC')->get_where('module',array('mod_has_parent'=>$m->mod_id,'mod_active'=>1));
					if($submenu->num_rows()>0){
						// show sub module if exist yoo
						if (in_array($m->mod_slug, $arr_role))
						{
							echo "<li class='treeview'>
								".anchor('#',  "<i class='$m->mod_icon'></i>".$m->mod_name.' <i class="fa fa-angle-left pull-right"></i>')."
									<ul class='treeview-menu'>";
							foreach ($submenu->result() as $s){
								echo "<li>" . anchor("backend/". $s->mod_slug , "<i class='$s->mod_icon'></i> <span>" . $s->mod_name) . "</span></li>";
							}
								echo"</ul>
								</li>";
						}
					}else{
						if (in_array($m->mod_slug, $arr_role))
						{
							echo "<li>" . anchor("backend/".$m->mod_slug, "<i class='$m->mod_icon'></i> <span>" . $m->mod_name) . "</span></li>";
						}
					}
				}
				*/

				// menu dynamic ver 2
				$bid = intval($this->session->userdata ( 'accBid' ) );
				$dir_menu = "backend/";
				foreach(get_user_main_menus($bid) as $m){
					$modID = intval($m["mod_id"]);
					$modParent = intval($m["mod_has_parent"]);
					$count_child = count(get_user_child_menus($modID, $bid));
					if($count_child < 1){
						echo '<li>' . anchor($dir_menu . $m["mod_slug"] , '<i class="'.$m["mod_icon"].'"></i> <span>' . $m["mod_name"]) . '</span></li>';
					}else{
						echo '<li class="treeview">';
						echo '<a href="#"><i class="'.$m["mod_icon"].'"></i><span>'.$m["mod_name"].'</span><span class="pull-right-container">
										<i class="fa fa-angle-left pull-right"></i>
								</span>
							 </a>';
							echo '<ul class="treeview-menu">';
							foreach (get_user_child_menus($modID, $bid) as $s){
								echo '<li>' . anchor($dir_menu . $s["mod_slug"] , '<i class="'.$s["mod_icon"].'"></i> <span>' . $s["mod_name"]) . '</span></li>';
							}
							echo '</ul>';
						echo '</li>';
					}
				}
				?>
				<li><a href="#" data-toggle="modal" data-target=".modal-change-password"><i class="fa fa-key"></i> <span>Change Password</span></a></li>
				<li class="header">LABELS</li>
				<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
				<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
				<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- =============================================== -->

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				<?= $contentHeader;?>
				<!-- <small>it all starts here</small> -->
			</h1>
			<!-- Use breadcrumb later
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Examples</a></li>
				<li class="active">Blank page</li>
			</ol>
			-->
		</section>
