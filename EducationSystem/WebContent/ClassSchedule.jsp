<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="https://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="https://www.jeasyui.com/easyui/themes/color.css">
<link rel="stylesheet" type="text/css"
	href="https://www.jeasyui.com/easyui/demo/demo.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<title>Class Schedule</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<style type="text/css">
#div1{
 	border: 1px solid white;
	margin-right: 10%;
    margin-left: 10%;
    background-color : lightblue;

}
#div2{
	border: 1px solid black;
    margin-right: 10%;
    margin-left: 10%;
    background-color: white;
	padding: 10%;
	padding-left : 10%;
}
h1{
	color:blue;
}
</style>
</head>
<body>
 <div title="Enroll" style="padding:10px">
  <div id="div1"> 
     <a href="index.jsp">
     <table>
		<tr><td><img src="C:\Users\Pranav Patel\Desktop\picture\images.jpg" width="200" height="150"></td><td><h1>Class Scheduling</h1></td>
		</table>
     </div></a>
    <div id="div2">
    <table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
            data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
        <thead>
            <tr>
                <th data-options="field:'itemid',width:80">Reqire Id</th>
                <th data-options="field:'productid',width:100">First Name</th>
                <th data-options="field:'listprice',width:80,align:'right'">Last Name</th>
                <th data-options="field:'unitcost',width:80,align:'right'">Address</th>
                <th data-options="field:'attr1',width:250">city</th>
                <th data-options="field:'status',width:60,align:'center'">State</th>
                <th data-options="field:'status',width:60,align:'center'">Zipcode</th>
                <th data-options="field:'status',width:60,align:'center'">Email</th>
            </tr>
        </thead>
    </table>
    </div>
<!--             <ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul> -->
        </div>
</body>
</html>