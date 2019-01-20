<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-6">
		<!-- Default box -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title"><?= $contentTitle;?></h3>

					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
								title="Collapse">
							<i class="fa fa-minus"></i></button>
					</div>
				</div>
				<div class="box-body">
					<!-- form start -->
					<form role="form">
						<div class="box-body">
							<div class="form-group">
								<label>Nama Lengkap</label>
								<input type="text" name="f_name" class="form-control" id="f_name" value="<?= $name; ?>" placeholder="Nama Anda">
							</div>
							<div class="form-group">
								<label>Username</label>
								<input type="text" name="f_uname" class="form-control" id="f_uname" value="<?= $username; ?>" readonly="readonly">
							</div>
							<div class="form-group">
								<label>Email</label>
								<input type="email" name="f_email" class="form-control" id="f_email" value="<?= $email; ?>" placeholder="Email Anda">
							</div>
							<div class="form-group">
								<label>Tipe Admin</label>
								<?php
									if($is_authorized){
										echo '<select name="f_type" class="form-control" id="f_type">';
											echo '<option value="" selected>Pilih Tipe</option>';
											echo '<option value="CMS">CMS</option>';
											echo '<option value="Website">Website</option>';
										echo '</select>';
									}else{
										echo '<label>'.$type.'</label>';
									}
								?>
							</div>
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					Footer
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
		</div>
	</div>

</section>
<!-- /.content -->
