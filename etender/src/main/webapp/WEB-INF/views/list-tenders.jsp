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
	<div class="col-md-offset-1 col-md-10">
		<div align="center">
			<a href="../admin/home"> <img src="/resources/images/logo.jpg" alt="logo"></a>
		</div>
		<h3 class="text-center">E-TENDER - Available Tenders</h3>
		<hr/>

		<input type="button" value="Add Tender"
			   onclick="window.location.href='../tender/tenderForm'; return false;"
			   class="btn btn-primary"/> <br/>
		<br/>
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="panel-title">Tender List</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered">
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Expires</th>
						<th>Value</th>
						<th>Organization</th>
						<th>Action</th>
					</tr>

					<!-- loop over and print our users -->
					<c:forEach var="tempUser" items="${tenders}">

						<!-- construct an "update" link with user natonalLd -->
						<c:url var="viewTender" value="/tender/{tenderId}">
							<c:param name="tenderId" value="${tempUser.id}"/>
						</c:url>

						<tr>
							<td>${tempUser.name}</td>
							<td>${tempUser.description}</td>
							<td>${tempUser.expires}</td>
							<td>${tempUser.value}</td>
							<td>${tempUser.orgId}</td>
							<td>> <a href="${viewTender}">View</a></td>

						</tr>

					</c:forEach>

				</table>

			</div>
		</div>
	</div>

</div>
<div class="footer">
	<p>Footer</p>
</div>
</body>
</html>