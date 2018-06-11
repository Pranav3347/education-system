<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Education System</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src ="js/jquery.js"></script>
<script type="text/javascript" src = "js/bootstrap.min.js"></script>
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
<a href="index.jsp">
<div id="div1">
<table>
<tr><td><img src="C:\Users\Pranav Patel\Desktop\picture\images.jpg" width="200" height="150"></td><td><h1>Registration</h1></td>
</table>
</div></a>

<div id="div2">
   <table>
	<tr>
	<td>Student ID:</td>
	<td><input type="text" name="studentid" id="studentid"></td>
	</tr>
	<tr>
	<td>First Name:</td>
	<td><input type="text" name="firstname" id="firstname"></td>
	</tr>
	<tr>
	<td>Last Name:</td>
	<td><input type="text" name="lastname" id="lastname"></td>
	</tr>
	<tr>
	<td>Address:</td>
	<td><input type="text" name="address" id="address"></td>
	</tr>
	<tr>
	<td>City:</td>
	<td><input type="text" name="city" id="city"></td>
	</tr>
	<tr>
	<td>State:</td>
	<td><input type="text" name="State" id="State"></td>
	</tr>
	<tr>
	<td>Zipcode:</td>
	<td><input type="text" name="zipcode" id="zipcode"></td>
	</tr>
	<tr>
	<td>Email:</td>
	<td><input type="text" name="Email" id="Email" size="50"></td>
	</tr>
	<tr>
	<td>Upload picture:</td>
	<td><input type="file" id="file" name="file"></td>
	</tr>
	
   </table>
   <button  value="submit">Submit</button>
</div>

</body>
</html>