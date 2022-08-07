<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>.:Visitor Management System:.</title>
<link rel="stylesheet" href="css/all.min.css">
<link rel="stylesheet" href="css/adminlte.min.css">
<link rel="stylesheet" type="text/css" href="css/idsl_css.css">
        <style type="text/css">
        body{
        font-size: 14px !important;
        }
        #html_btn {
            display:none;
        }
        </style>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <div class="content-wrapper">
                <section class="content-header"><!-- Content Header (Page header) -->
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Security Request</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Security Request</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>
                <section class="content"><!-- Main content -->
                <form name="frmuser" id="frmuser" action="#" method="post" enctype="multipart/form-data">
                    <div class="container-fluid">
                       
                        
                        <div class="card card-default " id="t_header">
                            <div class="card-header">
                                <h3 class="card-title">Visitor Details</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-sm btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>    
                                    </button>
                                </div>
                            </div>
                               
                                <div class="card-body" >
                                    <div class="row"  >
                                        <table class='table table-bordered' id="tbl_doc">
                                            <thead>
                                                <tr>
                                                    <th><a href="#" class="btn btn-success btn-xs add-row"><span class="fa fa-plus" aria-hidden="true"></span></a></th>
                                                    <th>Visitor Name</th>
                                                    <th>Mobile No</th>
                                                    <th>Email ID</th>
                                                    <th>Gender</th>
                                                    <th>Age</th>
                                                    <th>ID Proof Type</th>
                                                    <th>ID proof No</th>
                                                    <th>Material</th>
                                                    <th>Photo</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                  <td>
                                                        <a href="#" class="btn btn-danger btn-xs delete-row"><span class="fa fa-trash" aria-hidden="true"></span></a>
                                                    </td>
                                                    <td>
                                                        <input type="text" name="vs_name[]" id="vs_name" class="form-control form-control-sm vs_name" autocomplete="off" maxlength="140" onkeyup="cls_autocomplete('vs_name', 'get_visname_auto.php',this.value)">
                                                    </td>
                                                    <td>
                                                        <input type="text" name="mobile_no[]" id="mobile_no" class="form-control form-control-sm mobile_no" autocomplete="off" maxlength="12" onkeypress="return disablekeys(event);" onkeyup="cls_autocomplete('mobile_no', 'get_vismob_auto.php',this.value)">
                                                    </td>
                                                    <td>
                                                        <input type="email" name="mail_id[]" id="mail_id" class="form-control form-control-sm mail_id" autocomplete="off" maxlength="90" onkeyup="cls_autocomplete('mail_id', 'get_visemail_auto.php',this.value)">
                                                    </td>
                                                     <td>
                                                        <select name="vs_gender[]" id="vs_gender" class="form-control form-control-sm vs_gender"  style="width:80px;"> 
                                                            <option value=""></option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                         <input type="text" name="vs_age[]" id="vs_age" style="width:80px;" class="form-control form-control-sm vs_age" autocomplete="off" maxlength="3" onkeypress="return disablekeys(event);">
                                                    </td>
                                                    
                                                    <td>
                                                        <select name="proof_type[]" id="proof_type" class="form-control form-control-sm proof_type">
                                                            <option value=""></option>
                                                            <option value="Aadhar">Aadhar</option>
                                                            <option value="pan">PAN</option>
                                                            <option value="Driving License">Driving License</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                         <input type="text" name="proof_no[]" id="proof_no" class="form-control form-control-sm proof_no" autocomplete="off" maxlength="16">
                                                    </td>
                                                    <td>
                                                        <input type="text" name="vs_material[]" id="vs_material" class="form-control form-control-sm vs_material" autocomplete="off" maxlength="240">
                                                    </td>
                                                    <td>
                                                        <input type="button" id="oncamera" class="btn btn-success btn-sm oncamera" value="Camera">
                                                        <input type="button" onclick="take_snapshot()" class="btn btn-danger btn-sm take_snapshots" value="Capture">
                                                        <input type="hidden" class="image-tag" name="capture_img[]">
                                                    </td>
                                                    <td>
                                                        <div  class="camera"></div>
                                                        <div  class="pic"></div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                            </div><!-- card body -->
                        </div><!-- /.card card-primary -->
             
                    </div><!-- container fluid -->
                    <input type="hidden" name="key" />
                    <input type="hidden" name="scr_type" id="scr_type"/>
                    <input type="hidden" name="emailerr" id="emailerr"/>
                    <input type="hidden" id="cam_val" name="cam_val" >
                    <input type="button" value="save" onclick="fun()"/>
                </form>
            </section><!-- Main content -->
            </div><!-- ./content wrapper -->
        </div><!-- ./wrapper -->
 <script src="js/jquery.min.js"></script>
    <script src="js/bs-custom-file-input.min.js"></script>
    <script src="js/webcam.min.js" type="text/javascript"></script>
    <script>
        function fun(){
            var frm = document.frmuser;
            frm.key.value='save';
            frm.submit();
        }
        $(document).ready(function(){

            bsCustomFileInput.init();
             var cloned = $('#tbl_doc tr:last').clone();
            $(".add-row").click(function(e) {
                e.preventDefault();
                cloned.clone().appendTo('#tbl_doc');
                $(".take_snapshots").hide();
                $(".oncamera").show();
            });

            $('#tbl_doc').on('click', ".delete-row", function(e) {
                e.preventDefault();
                var rowCount = $('#tbl_doc tr').length;
                if(rowCount>2){
                    $(this).closest('tr').remove();
                }
            });
            $(".take_snapshots").hide();
        });
    </script>
     <script language="JavaScript">

         $('#tbl_doc').on('click', ".oncamera", function(e) {
                e.preventDefault();
                 alert("jj")
            $(this).closest('tr').find('.pic').hide();
            $(this).closest('tr').find('.camera').show();
            $(this).closest('tr').find('.oncamera').hide();
            $(this).closest('tr').find('.take_snapshots').show();
            $(this).closest('tr').find('.camera').width(100).height(100);
            var i=document.getElementById('cam_val').value;
            if(i=="")
            {
                i=0;
            }
            var val=parseInt(i)+1;
            $(this).closest('tr').find('.camera').attr('id', 'camera'+val);
            document.getElementById('cam_val').value = val;
            Webcam.set({
                width: 100,
                height: 100,
                image_format: 'jpeg',
                jpeg_quality: 90
            });
            
           Webcam.attach('#camera'+val);
        });
  
        $('#tbl_doc').on('click', ".take_snapshots", function(e) {
           e.preventDefault();

            var selected = $(this);
            Webcam.snap( function(data_uri) {
            $(selected).closest('tr').find('.image-tag').val(data_uri);
            $(selected).closest('tr').find('.pic').show();
            $(selected).closest('tr').find('.camera').hide();
            $(selected).closest('tr').find('.pic').html('<img src="'+data_uri+'"/>');
            $(selected).closest('tr').find('.oncamera').show();
            $(selected).closest('tr').find('.take_snapshots').hide();

        });
    });
    
</script>
</body>
</html>