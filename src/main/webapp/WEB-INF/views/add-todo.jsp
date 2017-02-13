<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP WELCOME</title>
</head>
<body>
<h1>Hi ${name}</h1>
<form action="/add-todo", method="post">
<label>Description</label>
<input type="text" name="desc">
<input type="submit" value="add"/></form>
</body>
</html>