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

function addCon(){
	window.location.href='viewing.jsp'
	return false;
}
</script>

</head>

<body background="C:\Users\Pranav Patel\Desktop\New folder\maxresdefault.jpg">

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms" user="vms"  password="Vendor123"/>  

<sql:query dataSource="${db}" var="rs">  
SELECT Rid from Requirements ;  
</sql:query> 

<sql:query var="rs1" dataSource="${db}">
 SELECT idfromdb from consultant;
 </sql:query> 
  
<%-- <sql:update var="rs2" dataSource="${db}">
INSERT INTO submision VALUES(${'sid'},'reqid','conid');
</sql:update> --%>
<form action="submision" method="post">
<table>
	<tr>
	<td>Submition id:</td>
	<td><input type="text" id="sid" name="sid"></td>
	</tr>
	<tr>
	<td>Required id:</td> 
	<td><select id="reqid" name="reqid">
	<c:forEach var="table" items="${rs.rows}">
	<option value="${table.Rid}"><c:out value="${table.Rid}"></c:out></option>
	</c:forEach>
	</select></td>
	</tr>
	<tr>
	<td>Consultant id:</td> 
	<td><select id="conid" name="conid">
	<c:forEach var="table" items="${rs1.rows}">
	<option value="${table.idfromdb}"><c:out value="${table.idfromdb}"></c:out></option>
	</c:forEach>
	</select></td>
	</tr>
</table>
<button id="but" onclick="addData()">Submit</button>
<button id="but1" onclick="addCon();">Add Consultant</button>
</form>
</body>
</html>