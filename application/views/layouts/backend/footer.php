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

<div class="modal fade modal-change-password" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Ganti kata sandi Anda?</h4>
			</div>
			<div class="modal-body">
				<p id="forgot_msg">
					Input kata sandi baru Anda.
				</p>
				<div class="form-group has-feedback">
					<input type="password" name="change_pass" class="form-control" placeholder="Ganti Kata Sandi" required="required">
					<span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="btn_change_pass" class="btn btn-primary">Kirim</button>
			</div>
		</div>
	</div>
</div>
<!-- /.modal-forgot-password -->

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
	function isEmpty(val){
		return (val === undefined || val == null || val.length <= 0) ? true : false;
	}
	function throw_ajax(url, type, data, successT, errorT){
		$.ajax({
			type: type,
			url: url,
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			dataType: 'JSON',
			contentType:"application/json",
			data: data,
			success: successT,
			error: errorT
		});
	}
	function throw_ajax_err(jqXHR, textStatus, errorThrown){
		console.log('ERRORS: ' + textStatus + ' - ' + errorThrown );
	}
	function send_change_password(pass){
		var url = '<?php echo base_url('backend/useradmin/change_new_password'); ?>';
		var type = 'POST';
		var data = {
		<?=
			$this->security->get_csrf_token_name(); ?> : "<?= $this->security->get_csrf_hash(); ?>",
			param : pass
		};

		var success = function (jqXHR) {
			if(jqXHR.status){
				alert(jqXHR.message);
				$('.modal-change-password').modal("hide");
			}else{
				alert(jqXHR.message);
				$('.modal-change-password').modal("hide");
			}
		};
		throw_ajax(url, type, data, success, throw_ajax_err);
	}

	$(document).ready(function () {
		$('.sidebar-menu').tree();
		$("#btn_change_pass").on("click", function(e){
			var pass = $('input[name="change_pass"]');
			if(isEmpty(pass.val())){
				alert('Harap mengisi Kata Sandi baru Anda.');
				pass.focus();
			}else{
				send_change_password(pass.val());
			}
		});
	})
</script>
</body>
</html>
