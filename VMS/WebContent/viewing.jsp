<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function reqDetails(){
	var d=document.getElementByID("reqid").value;
	alert(d);
}
</script>
</head>
<body background="C:\Users\Pranav Patel\Desktop\New folder\maxresdefault.jpg">
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms" user="vms"  password="Vendor123"/>  

<sql:query dataSource="${db}" var="rs">  
SELECT * from Requirements ;  
</sql:query>  

<h1> Information Form</h1>
<div align="center">
<form action="viewingservlet" method="post" enctype="multipart/form-data">
<table>
	<tr>
	<td>Required id:</td> 
	<td><select id="reqid" onchange="reqDetails()">
	<c:forEach var="table" items="${rs.rows}">
	<option value="${table.Rid}"><c:out value="${table.Rid}"></c:out></option>
	</c:forEach>
	</select></td>
	</tr>
	<tr>
	<td>Position:</td>
	<td><input type="text" name="position" id="position"></td>
	</tr>
	<tr>
	<td>Location:</td>
	<td><input type="text" name="location" id="location"></td>
	</tr>
	<tr>
	<td>Payrate:</td>
	<td><input type="text" name="payrate" id="payrate"></td>
	</tr>
	<tr>
	<td>Consultant name:</td>
	<td><input type="text" name="cname" id="cname"></td>
	</tr>
	<tr>
	<td>Location:</td>
	<td><input type="text" name="Location" id="Location"></td>
	</tr>
	<tr>
	<td>Email:</td>
	<td><input type="text" name="Email" id="Email" size="50"></td>
	</tr>
	<tr>
	<td>Upload Resume:</td>
	<td><input type="file" id="file" name="file" multiple>
</table>
 <!-- <div>
   <label for="file">Upload resume:</label>
   <input type="file" id="file" name="file" multiple>
 </div> -->
 <button>Submit</button>
</form>
</div>
</body>
</html>