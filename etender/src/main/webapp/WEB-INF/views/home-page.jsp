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
            <a href="home"> <img src="/resources/images/logo.jpg" alt="logo"></a>
        </div>
        <h3 class="text-center">E-TENDER</h3>
        <h3 class="text-center">
            <br>
            <br>
            <input type="button" value="View Organisations"
                   onclick="window.location.href='../organization/list'; return false;"
                   class="btn btn-primary"
            />

            <input type="button" value="View Tenders"
                   onclick="window.location.href='../tender/tenders'; return false;"
                   class="btn btn-primary"
            />

            <input type="button" value="Login/Register"
                   onclick="window.location.href='../user/login'; return false;"
                   class="btn btn-primary"
            />

        </h3>

        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Welcome</div>
            </div>
            <div class="panel-body">
                <form:form action="updateCombo" cssClass="form-horizontal"
                           method="post" modelAttribute="listTenders">

                    <!-- need to associate this data with contactDetail id -->
                    <p>This is a system developed to calculate the credit score for an applicant to see
                        their credit worthiness. After carrying a research in some banks in
                        Zimbabwe it was realized developing this system would help banks and other financial
                        institutions in the decision-making process and reduce the risks in giving credit to
                        applicants that are not credit worthy.
                    </p>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>