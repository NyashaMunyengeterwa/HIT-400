<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-TENDER SYSTEM|E-TENDER SYSTEM</title>
<!-- bootstrap css -->       <link rel="stylesheet" href="resources/css/bootstrap.min.css">       <!-- style css -->       <link rel="stylesheet" href="resources/css/style.css">       <!-- Responsive-->       <link rel="stylesheet" href="resources/css/responsive.css">       <link rel="stylesheet" href="resources/css/owl.carousel.min.css">       <!-- fevicon -->       <link rel="icon" href="images/fevicon.png" type="image/gif" />       <!-- Scrollbar Custom CSS -->       <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.min.css">       <!-- Tweaks for older IEs-->       <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/resources/css/font-awesome.css">       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">       <!--[if lt IE 9]>       <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
	<script>
	function validate(evt) {
	var theEvent = evt || window.event;

	// Handle paste
	if (theEvent.type === 'paste') {
	key = event.clipboardData.getData('text/plain');
	} else {
	// Handle key press
	var key = theEvent.keyCode || theEvent.which;
	key = String.fromCharCode(key);
	}
	var regex = /[0-9]|\./;
	if( !regex.test(key) ) {
	theEvent.returnValue = false;
	if(theEvent.preventDefault) theEvent.preventDefault();
	}
	}
    </script>

</head>
<body background="/resources/images/background.jpg">


	<div class="container">
		<div class="col-md-offset-2 col-md-7">
		<div align= "center">
              <a href="home"> <img src="/resources/images/logo.jpg" alt="logo" ></a>
        </div>
			<h3 class="text-center">E-Tender PANEL</h3>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Add Tender</div>
				</div>
				<div class="panel-body">
					<form:form action="saveTender" cssClass="form-horizontal"
						method="post" modelAttribute="tender">

						<!-- need to associate this data with user id -->
						<form:hidden path="id" />

						<div class="form-group">
							<label for="name" class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<form:input path="name" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="description" class="col-md-3 control-label">Description</label>
							<div class="col-md-9">
								<form:input path="description" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="expires" class="col-md-3 control-label">Expires</label>
							<div class="col-md-9">
								<form:input path="expires" onkeypress='validate(event)' cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
						<%--<div class="col-md-9">
					        <select id="id" name="categoryId">

                                <option value="" name="categoryId">Select Category</option>
                                <c:forEach items="${tenderForm.categoryList}" var="category">
                                    <option value="${category.id}" id="categoryId"
											path="tender.categoryId"
                                    >${category.name}
                                    </option>
                                </c:forEach>
                            </select>

                        </div>--%>
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