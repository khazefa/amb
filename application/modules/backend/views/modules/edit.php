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
                <form class="form-horizontal" action="<?php echo base_url($classname.'/modify');?>" method="POST" role="form">
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
                <input type="hidden" name="fid" id="fid" value="<?php echo $records[0]['id'];?>">
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
                            <label class="col-sm-3 control-label">Nama Modul</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="fname" name="fname" value="<?php echo $records[0]['name'];?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Link Modul</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="flink" name="flink" value="<?php echo $records[0]['link'];?>">
                                <p class="help-block">ex: link-module</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Icon Modul</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="ficon" name="ficon" value="<?php echo $records[0]['icon'];?>">
                                <p class="help-block">ex: fa fa-pencil <a href="https://fontawesome.com/cheatsheet" target="_blank"><i class="fa fa-info-circle"></i></a></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Status Modul</label>
                            <div class="col-sm-4">
                                <select id="factive" name="factive" class="form-control">
                                    <option value="1" <?php echo $records[0]['active'] === '1' ? 'selected' : '' ;?>>Aktif</option>
                                    <option value="0" <?php echo $records[0]['active'] === '0' ? 'selected' : '' ;?>>Non Aktif</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Hirarki Modul</label>
                            <div class="col-sm-6">
                                <select id="fparent" name="fparent" class="form-control">
                                    <option value="0" selected>Pilih</option>
                                    <?php
                                        foreach($arr_modul as $a){
                                            if($a["id"] === $records[0]['parent']){
                                                echo '<option value="'.$a["id"].'" selected>'.$a["name"].'</option>';
                                            }else{
                                                echo '<option value="'.$a["id"].'">'.$a["name"].'</option>';
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
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

<script type="text/javascript">
    $(document).ready(function() {
        $('#fname').on('keypress',function(e) {
            if(e.keyCode === 13){
                e.preventDefault();
                var val_name = this.value;
                str = val_name.replace(/\s+/g, '-').toLowerCase();
                $('#flink').val(str);
                return false;
            }
        });
    });
</script>