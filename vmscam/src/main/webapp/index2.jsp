
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
    <script src='js2/jquery-1.9.1.js' type="text/javascript"></script>
    <script src="js2/jquery.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href='css2/jquery.autocomplete.css' /> 
    <script type="text/javascript" src='js2/jquery_autocomplete.js'></script> 
    <script type="text/javascript">
        $(document).ready(function () 
        { 
        	alert("kiran")
        $("#customer2").autocomplete("customer", {
        width: 300,
        selectFirst: true
        });

        $("#txtempcode").autocomplete("get_employee.php", {
        width: 300,
        selectFirst: true
        });
           });
    </script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E9E9E9" class="screenBackcolour">
    <tr>
        <td colspan="2" align="left" >
            <form name="sampleform" id="sampleform" method="post" enctype="multipart/form-data"><br />
                <table width="110%" border="0" cellpadding="0" cellspacing="0" class="line">
                    <tr>
                        <td><label class="label"><b>Customer</b></label></td>
                        <td><label class="label"><b>Employee</b></label></td>
                    </tr>

                    <tr>
                        <td>
                             <input name="customer" id="customer2" type="text" class="input" placeholder="kiran"  style="width:150px;" autocomplete="off" />
                        </td>
                        <td align="left" valign="top" >
                             <input name="emp1" id="txtempcode" placeholder="123-45-678" type="text" class="input" style="width:160px;"  />
                        </td>
                    </tr>
                   
                </table>
            </form>
        </td>
    </tr>
</table>





