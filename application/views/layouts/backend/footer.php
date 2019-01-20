</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 0.0.1
	</div>
	<strong>Copyright &copy; 2019 <a href="#"><?= APP_NAME; ?></a>.</strong> All rights
	reserved.
</footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<?php echo resource_url('/bower_components/jquery/dist/jquery.min.js');?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo resource_url('/bower_components/bootstrap/dist/js/bootstrap.min.js');?>"></script>
<!-- SlimScroll -->
<script src="<?php echo resource_url('/bower_components/jquery-slimscroll/jquery.slimscroll.min.js');?>"></script>
<!-- FastClick -->
<script src="<?php echo resource_url('/bower_components/fastclick/lib/fastclick.js');?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo resource_url('/assets/js/adminlte.min.js');?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo resource_url('/assets/js/demo.js');?>"></script>
<script>
	$(document).ready(function () {
		$('.sidebar-menu').tree()
	})
</script>
</body>
</html>
