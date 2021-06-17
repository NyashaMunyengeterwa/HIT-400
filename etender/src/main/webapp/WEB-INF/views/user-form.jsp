<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>E-TENDER SYSTEM|E-TENDER SYSTEM</title>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">       <!-- style css -->
    <link rel="stylesheet" href="resources/css/style.css">       <!-- Responsive-->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">       <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif"/>       <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.min.css">       <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/resources/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
          media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
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
                <div class="panel-title">Add User</div>
            </div>
            <div class="panel-body">
                <form:form action="saveUser" cssClass="form-horizontal"
                           method="post" modelAttribute="user">

                    <!-- need to associate this data with user id -->


                    <div class="form-group">
                        <label for="firstname" class="col-md-3 control-label">First
                            Name</label>
                        <div class="col-md-9">
                            <form:input path="firstName" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastname" class="col-md-3 control-label">Last
                            Name</label>
                        <div class="col-md-9">
                            <form:input path="lastName" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="dateOfBirth" class="col-md-3 control-label">Date Of Birth</label>
                        <div class="col-md-9">
                            <form:input path="dateOfBirth" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nationalId" class="col-md-3 control-label">National ID
                        </label>
                        <div class="col-md-9">
                            <form:input path="nationalId" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="userType" class="col-md-3 control-label">User Type</label>
                        <div class="col-md-9">
                            <select id="userType" name="userType" cssClass="form-control">
                                <option value="client" id="client" name="client">Client</option>
                                <option value="blacklisted" id="blacklisted" name="blacklisted">Blacklisted</option>
                            </select>


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