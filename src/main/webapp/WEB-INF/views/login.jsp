<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP WELCOME</title>
</head>
<body>
<form action="/login" method="post">
<h3>${error}</h3>
<label>Enter Your Name</label> <input type="text" name="name"><br>
<label>Enter Your Password</label> <input type="password" name="password"><br>
<input type="submit" value="post">
</form>
</body>
</html>