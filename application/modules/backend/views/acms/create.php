<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-8 offset-md-4">
            <div class="box box-default">
                <div class="box-header with-border">
                    <a href="javascript: history.go(-1)"><i class="fa fa-reply"></i></a>
                    <h3 class="box-title"><?= $contentTitle;?></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <form class="form-horizontal" action="<?php echo base_url($classname.'/insert');?>" method="POST" role="form">
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
                    <div class="box-body">
                        <p class="text-success text-center">
                            <?php
                            $error = $this->session->flashdata('error');
                            if($error)
                            {
                            ?>
                            <div class="alert alert-danger alert-dismissable" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <?php echo $error; ?>                    
                            </div>
                            <?php
                            }
                            $success = $this->session->flashdata('success');
                            if($success)
                            {
                            ?>
                            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <?php echo $success; ?>                    
                            </div>
                            <?php } ?>
                        </p>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Nama Pengguna <span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="funame" name="funame" placeholder="Nama Pengguna" required="required" pattern="[a-zA-Z0-9]+">
                                <p class="help-block">no spaces, alphanumeric only</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Kata Sandi <span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="fupass" name="fupass" placeholder="Kata Sandi" pattern=".{4,8}" required title="4 to 8 characters">
                                <p class="help-block">minimal 4 karakter</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Nama Lengkap <span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="fname" name="fname" placeholder="Nama Lengkap" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Email <span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <input type="email" class="form-control" id="femail" name="femail" placeholder="johndoe@domain.com" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Status</label>
                            <div class="col-sm-4">
                                <select id="factive" name="factive" class="form-control">
                                    <option value="1" selected>Aktif</option>
                                    <option value="0">Non Aktif</option>
                                </select>
                            </div>
                        </div>
                        <!--
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Hak Akses Modul<span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target=".modal-data-modul">Atur</button>
                            </div>
                        </div>
                        -->
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-info pull-right">Submit</button>
                    </div>
                    <!-- /.box-footer -->
                </form>
                <!-- /.form -->
            </div>
        </div>

    </div>

</section>

<div class="modal fade modal-data-modul" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Pengaturan Hak Akses Modul</h4>
			</div>
			<div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                        <div class="col-sm-6 offset-md-6">
                            <div class="checkbox">
                                <input name="fcode_all" id="fcode_all" type="checkbox" value="*">
                                <label for="fcode_all">
                                    Check All / Uncheck All
                                </label>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="row">
                            <div class="col-md-12">
                                <?php
                                    $col1 = 0;
                                    $col2 = 0;
                                    $col3 = 0;
                                    $col4 = 0;
                                    $arr_col1 = array();
                                    $arr_col2 = array();
                                    $arr_col3 = array();
                                    $arr_col4 = array();
                                    $t_list = count($list_modul);
                                    $t_divide = (int) ceil($t_list/4);

                                    $arr_col1 = array_slice($list_modul, 0, (int) ceil($t_list/4));
                                    $arr_col2 = array_slice($list_modul, count($arr_col1), (int) ceil($t_list/4));
                                    $arr_col3 = array_slice($list_modul, (count($arr_col1) + count($arr_col2)), (int) ceil($t_list/4));
                                    $arr_col4 = array_slice($list_modul, (count($arr_col1) + count($arr_col2) + count($arr_col3)), (int) ceil($t_list/4));
                                ?>
                                <div class="col-sm-3">
                                <?php
                                    foreach($arr_col1 as $c1){
                                        $code = filter_var($c1["id"], FILTER_SANITIZE_NUMBER_INT);
                                        $name = filter_var($c1["name"], FILTER_SANITIZE_STRING);

                                        echo '<div class="col-sm-12">';
                                            echo '<div class="checkbox">';
                                                echo '<input type="checkbox" id="checkbox'.$col1.'" name="fcode[]" value="'.$code.'"/>'
                                                        . '<label for="checkbox'.$col1.'">'.$name.'</label>';
                                            echo '</div>';
                                        echo '</div>';
                                        $col1++;
                                    }
                                ?>
                                </div>
                                <div class="col-sm-3">
                                <?php
                                    foreach($arr_col2 as $c2){
                                        $code = filter_var($c2["id"], FILTER_SANITIZE_NUMBER_INT);
                                        $name = filter_var($c2["name"], FILTER_SANITIZE_STRING);
                                        $col2 = $col1 + $col2;

                                        echo '<div class="col-sm-12">';
                                            echo '<div class="checkbox">';
                                                echo '<input type="checkbox" id="checkbox'.$col2.'" name="fcode[]" value="'.$code.'"/>'
                                                        . '<label for="checkbox'.$col2.'">'.$name.'</label>';
                                            echo '</div>';
                                        echo '</div>';
                                        $col2++;
                                    }
                                ?>
                                </div>
                                <div class="col-sm-3">
                                <?php
                                    foreach($arr_col3 as $c3){
                                        $code = filter_var($c3["id"], FILTER_SANITIZE_NUMBER_INT);
                                        $name = filter_var($c3["name"], FILTER_SANITIZE_STRING);
                                        $col3 = $col2 + $col3;

                                        echo '<div class="col-sm-12">';
                                            echo '<div class="checkbox">';
                                                echo '<input type="checkbox" id="checkbox'.$col3.'" name="fcode[]" value="'.$code.'"/>'
                                                        . '<label for="checkbox'.$col3.'">'.$name.'</label>';
                                            echo '</div>';
                                        echo '</div>';
                                        $col3++;
                                    }
                                ?>
                                </div>
                                <div class="col-sm-3">
                                <?php
                                    foreach($arr_col4 as $c4){
                                        $code = filter_var($c4["id"], FILTER_SANITIZE_NUMBER_INT);
                                        $name = filter_var($c4["name"], FILTER_SANITIZE_STRING);
                                        $col4 = $col3 + $col4;

                                        echo '<div class="col-sm-12">';
                                            echo '<div class="checkbox">';
                                                echo '<input type="checkbox" id="checkbox'.$col4.'" name="fcode[]" value="'.$code.'"/>'
                                                        . '<label for="checkbox'.$col4.'">'.$name.'</label>';
                                            echo '</div>';
                                        echo '</div>';
                                        $col4++;
                                    }
                                ?>
                                </div>
                            </div>

                    </div>

			</div>
			<div class="modal-footer">
				<button type="button" id="btn_submit_modul" class="btn btn-primary">Simpan</button>
			</div>
		</div>
	</div>
</div>
<!-- /.modal-data-modul -->

<script type="text/javascript">
    $(document).ready(function() {
        $('#funame').on('keypress',function(e) {
            if(e.keyCode === 13){
                e.preventDefault();
                var val_name = this.value;
                var url = '<?php echo base_url($classname.'/check/username');?>';
                var type = 'POST';
                var data = {
                <?=
                    $this->security->get_csrf_token_name(); ?> : "<?= $this->security->get_csrf_hash(); ?>",
                    funame : val_name
                };

                var success = function (jqXHR) {
                    if(jqXHR.status){
                        alert(jqXHR.message);
                        $('#funame').val('');
                        $('#funame').focus();
                    }else{
                        alert(jqXHR.message);
                        $('#funame').prop('readonly', true);
                        $('#fupass').focus();
                    }
                };
                throw_ajax(url, type, data, success, throw_ajax_err);
                return false;
            }
        });

        $('#femail').on('keypress', function(e) {
            if(e.keyCode === 13){
                e.preventDefault();
                var val_email = this.value;
                var url = '<?php echo base_url($classname.'/check/email');?>';
                var type = 'POST';
                var data = {
                <?=
                    $this->security->get_csrf_token_name(); ?> : "<?= $this->security->get_csrf_hash(); ?>",
                    femail : val_email
                };

                var success = function (jqXHR) {
                    if(jqXHR.status){
                        alert(jqXHR.message);
                        $('#femail').val('');
                        $('#femail').focus();
                    }else{
                        alert(jqXHR.message);
                    }
                };
                throw_ajax(url, type, data, success, throw_ajax_err);
                return false;
            }
        });

        $('#fcode_all').on("click", function(e){
            $('input:checkbox').not(this).prop('checked', this.checked);
        });
    });
</script>