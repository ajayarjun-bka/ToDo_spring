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
<h1>Your Todos are</h1>
<h3>${todos}</h3>
<br>
<a  href="/add-todo">ADD ToDo</a>
</body>
</html>