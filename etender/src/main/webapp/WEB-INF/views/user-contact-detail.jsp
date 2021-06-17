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
                <div class="panel-title">Welcome ${user.firstName} ${user.lastName}</div>
            </div>
            <div class="panel-body">
                <form:form action="updateUser" cssClass="form-horizontal"
                           method="post" modelAttribute="user">

                    <!-- need to associate this data with contactDetail id -->
                    <form:hidden path="firstName"/>
                    <form:hidden path="lastName"/>
                    <form:hidden path="userType"/>


                    <div class="form-group">
                        <label class="col-md-3 control-label">NationalId
                        </label>
                        <div class="col-md-9">
                            <form:input disabled="true" path="nationalId" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.addressLine1" class="col-md-3 control-label">Address Line 1
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.addressLine1" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.addressLine2" class="col-md-3 control-label">Address Line 2
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.addressLine2" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.city" class="col-md-3 control-label">City
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.city" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.country" class="col-md-3 control-label">Country
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.country" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.emailAddress" class="col-md-3 control-label">Email Address
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.emailAddress" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="contactDetail.msisdn" class="col-md-3 control-label">Mobile Number
                        </label>
                        <div class="col-md-9">
                            <form:input path="contactDetail.msisdn" cssClass="form-control"/>
                        </div>
                    </div>
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