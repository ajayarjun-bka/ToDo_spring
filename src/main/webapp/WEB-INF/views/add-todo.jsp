<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>Your Todo</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
</head>
<body>

    <div class="container">
        <form:form action="/add-todo" method="post" commandName="todo">
            <fieldset class="form-group">
                <form:label path="desc">Description</form:label>
                <form:input path="desc" type="text" class="form-control" required="required" placeholder="Enter your Description"/>
            	<form:errors path="desc" cssClass="text-warning"></form:errors>
            </fieldset>
            <button type="submit" class="btn btn-success">Add</button>
        </form:form>
    </div>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>