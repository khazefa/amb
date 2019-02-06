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
                <input type="hidden" name="fcode" id="fcode" value="<?php echo $records[0]['code'];?>">
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
                            <label class="col-sm-3 control-label">Judul <span class="text-danger">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="fname" name="fname" value="<?php echo $records[0]['name'];?>" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Url Slug</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="flink" name="flink" value="<?php echo $records[0]['link'];?>">
                                <p class="help-block">ex: url-slug</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Status</label>
                            <div class="col-sm-4">
                                <select id="fpublish" name="fpublish" class="form-control">
                                    <option value="1" <?php echo $records[0]['publish'] === '1' ? 'selected' : '' ;?>>Publish</option>
                                    <option value="0" <?php echo $records[0]['publish'] === '0' ? 'selected' : '' ;?>>Non Publish</option>
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
            if(e.keyCode === 13 || e.keyCode === 9){
                var val_name = this.value;
                str = val_name.replace(/\s+/g, '-').toLowerCase();
                $('#flink').val(str);
                return false;
            }
        });
    });
</script>