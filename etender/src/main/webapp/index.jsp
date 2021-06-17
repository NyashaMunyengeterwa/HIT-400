<html>
<body>
<h2>Hello World!</h2>
</body>
</html>
<c:forEach var="tempUser" items="${users}">

    <!-- construct an "update" link with user natonalLd -->
    <c:url var="updateLink" value="/user/updateForm">
        <c:param name="userNationalId" value="${tempUser.nationalId}"/>
    </c:url>

    <!-- construct an "delete" link with user id -->
    <c:url var="deleteLink" value="/user/delete">
        <c:param name="userNationalId" value="${tempUser.nationalId}"/>
    </c:url>


    <td>> <a href="${updateLink}">Update</a>
    | <a href="${deleteLink}"
    onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
    </td>