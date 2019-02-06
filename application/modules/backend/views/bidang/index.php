<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <?php 
                        if(!$readonly){
                    ?>
                        <button type="button" class="btn btn-default" onclick="location.href='<?php echo base_url($classname.'/add');?>'" title="Add New">
                            <i class="fa fa-plus-circle"></i> Tambah
                        </button>
                    <?php } ?>
                    <!-- <h3 class="box-title"><?= $contentTitle;?></h3> -->

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                                title="Collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                
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

                    <div class="table-responsive">
                        <table id="data_grid" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Judul</th>
                                <th>Link</th>
                                <th>Sub Judul</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- /.content -->
<script type="text/javascript">
    var table;
    
    function init_table(){
        // Responsive Datatable with Buttons
        table = $('#data_grid').DataTable({
            dom: "<'row'<'col-sm-6'l><'col-sm-6'f>>" + "<'row'<'col-sm-12'tr>>" + "<'row'<'col-sm-5'i><'col-sm-7'p><'col-sm-12'B>>",
            language: {
                processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>',
                paginate: { 'first': 'First', 'last': 'Last', 'next': '&rarr;', 'previous': '&larr;' }
            },
            destroy: true,
            stateSave: false,
            deferRender: true,
            processing: true,
            lengthChange: true,
            buttons: [
                {
                    extend: 'copy',
                    text: '<i class="fa fa-copy"></i>',
                    titleAttr: 'Copy',
//                    exportOptions: { columns: ':visible:not(:last-child)' }, //last column has the action types detail/edit/delete
                    exportOptions: {
                        modifier: {
                            page: 'current'
                        },
                        columns: ':visible:not(:last-child)'
                    },
                    footer:false
                }, 
                {
                    extend: 'excel',
                    text: '<i class="fa fa-file-excel-o"></i>',
                    titleAttr: 'Excel',
                    title: 'Export <?php echo $contentHeader; ?>',
//                    exportOptions: { columns: ':visible:not(:last-child)' }, //last column has the action types detail/edit/delete
                    exportOptions: {
                        modifier: {
                            page: 'current'
                        },
                        columns: ':visible:not(:last-child)'
                    },
                    footer:false
                },
                {
                    extend: 'pdf',
                    text: '<i class="fa fa-file-pdf-o"></i>',
                    titleAttr: 'PDF',
                    title: 'Export <?php echo $contentHeader; ?>',
//                    exportOptions: { columns: ':visible:not(:last-child)' }, //last column has the action types detail/edit/delete
                    exportOptions: {
                        modifier: {
                            page: 'current'
                        },
                        columns: ':visible:not(:last-child)'
                    },
                    footer:false
                }, 
                {
                    extend: 'excel',
                    text: '<i class="fa fa-file-excel-o"></i> All Page',
                    titleAttr: 'Excel All Page',
                    title: 'Export All <?php echo $contentHeader; ?>',
                    exportOptions: { columns: ':visible:not(:last-child)' }, //last column has the action types detail/edit/delete
                    footer:false
                }
            ],
            ajax: {                
                url: "<?php echo $url_list;?>",
                type: "POST",
                dataType: "JSON",
                contentType: "application/json",
                data: JSON.stringify( {
                    "<?php echo $this->security->get_csrf_token_name(); ?>": "<?php echo $this->security->get_csrf_hash(); ?>"
                } ),
            },
            columns: [
                { "data": 'name' },
                { "data": 'link' },
                { "data": 'subname' },
                { "data": 'publish' },
                { "data": 'button' },
            ],
            order: [[ 0, "asc" ]],
            columnDefs: [{ 
                orderable: false,
                targets: [ -1 ]
            }],
        });

        table.buttons().container()
                .appendTo('#data_grid_wrapper .col-md-12:eq(0)');
    }
    
    $(document).ready(function() {
        init_table();
    });
</script>