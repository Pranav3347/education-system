<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//out.print("welcome");
String name=request.getParameter("uname");
out.print(name);
//response.sendRedirect("https://www.google.com/");
//ssession.setAttribute("uname",name);
%>
<a href="New.jsp">NEW Page</a>
</body>
</html>