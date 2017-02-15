<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP WELCOME</title>
        <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
                rel="stylesheet">
</head>
<body>
<div class="container">
Hi ${name}
    <div>
        <table class="table table-striped">
            <caption>Your Todos are</caption>
            <thead>
                <tr>
                	<th>ID</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Completed</th>
                    <th>Delete?</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                    	<td>${todo.id}</td>
                        <td>${todo.desc}</td>
                        <td>${todo.targetDate}</td>
                        <td>${todo.done}</td>
                        <td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
	</div>
	<div class="container">
    <a class="btn btn-success" href="/add-todo">Add</a>
    </div>
     <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>