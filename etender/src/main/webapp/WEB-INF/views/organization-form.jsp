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
<div class="container">
    <div class="col-md-offset-2 col-md-7">
        <div align="center">
            <a href="../admin/home"> <img src="/resources/images/logo.jpg" alt="logo"></a>
        </div>
        <h3 class="text-center">E-TENDER</h3>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Add Organization</div>
            </div>
            <div class="panel-body">
                <form:form action="saveOrg" cssClass="form-horizontal"
                           method="post" modelAttribute="organization">

                    <!-- need to associate this data with user id -->


                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">Name</label>
                        <div class="col-md-9">
                            <form:input path="name" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cifNumber" class="col-md-3 control-label">Reg-Number</label>
                        <div class="col-md-9">
                            <form:input path="cifNumber" cssClass="form-control"/>
                        </div>
                    </div>

                    <%--<div class="form-group">
                        <label for="userType" class="col-md-3 control-label">User Type</label>
                        <div class="col-md-9">
                            <select id="userType" name="userType" cssClass="form-control">
                                <option value="client" id="client" name="client">Client</option>
                                <option value="blacklisted" id="blacklisted" name="blacklisted">Blacklisted</option>
                            </select>


                        </div>
                    </div>--%>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Submit</form:button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>