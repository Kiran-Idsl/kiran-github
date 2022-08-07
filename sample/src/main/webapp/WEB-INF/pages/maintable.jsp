<!DOCTYPE>
<html>  
<head>
<style>  
table, th, td {  
    border: 1px solid black;  
    border-collapse: collapse;  
}  
th, td {  
    padding: 10px;  
}  
table#alter tr:nth-child(even) {  
    background-color: #eee;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #fff;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
}  
</style>  
</head>
<body>  
<form action="save" method="post" modelAttribute="kiran">
<table id="alter" align="center">  
<tr>
<th>hh</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>Marks</th>
<th>Enter Grade</th>
</tr>  
<tr>
<td><input name="chk" type="checkbox" value="1"/></td>
<td>Sonoo</td>
<td>Jaiswal</td>
<td>60</td>
<td><input  name="grade" type="text"/></td>
</tr>  
<tr><td><input name="chk" type="checkbox" value="2"/></td><td>James</td><td>William</td><td>80</td><td><input  name="grade" type="text"/></td></tr>  
<tr><td><input name="chk" type="checkbox" value="3"/></td><td>Swati</td><td>Sironi</td><td>82</td><td><input  name="grade" type="text"/></td></tr>  
<tr><td><input name="chk" type="checkbox" value="4"/></td><td>Chetna</td>
<td>Singh</td><td>72</td><td><input  name="grade" type="text"/></td></tr>  
<tr>
<td colspan="5" align="center">
<input type="submit" value="save"/>
</td>
</tr>

</table>  
</form> 
</body>
</html>  

 
