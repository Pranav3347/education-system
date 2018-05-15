<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("username");
//String password = request.getParameter("password");
//out.print(name);
//out.print(password);
%>

<img alt="Image" src="C:\Users\Pranav Patel\Desktop\New folder\02.jpg" height ="200" width="50">
<h3 align="right"><%="welcome"+request.getParameter("username") %></h3>


<%-- <c:out value="${'welcome' }"> --%>



<%="welcome"+request.getParameter("username") %>

<%! 
   int Cube(int n){
	return (n*n*n);
}
%>
<%="Cube of 3 is"+Cube(3) %>


</body>
</html>