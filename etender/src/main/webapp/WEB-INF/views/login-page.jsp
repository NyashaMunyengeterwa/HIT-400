<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>E-TENDER SYSTEM|E-TENDER SYSTEM</title>
    <style>
        <%@include file="/resources/css/bootstrap.min.css" %>
    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body background="/resources/images/background.jpg">
<div>
    <input type="button" value="Register"
           onclick="window.location.href='register'; return false;"
           class="btn btn-primary"/> <br/>
</div>
<div th:if="${param.error}">
    Invalid username and password.
</div>
<div th:if="${param.logout}">
    You have been logged out.
</div>
<form th:action="@{/login}" method="post">
    <div><label> User Name : <input type="text" name="username"/> </label></div>
    <div><label> Password: <input type="password" name="password"/> </label></div>
    <div><input type="submit" value="Sign In"/></div>
</form>
</body>
</html>