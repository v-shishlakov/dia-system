<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script src="http://code.jquery.com/jquery-1.11.3.js"></script>


    <title>Users</title>
</head>
<body>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <p>Welcome : ${pageContext.request.userPrincipal.name}
            | <a href="<c:url value="/j_spring_security_logout" />"> Logout</a></p>
    </c:if>
<table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
    <caption><h3>Users</h3></caption>
    <tr>
        <th width="200">user name</th>
        <th colspan="2">action</th>
    </tr>
    <tr>
        <td colspan="3"><a href="renderUser?userId=0">add User</a></td>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td><a href="getTaskList?userId=${user.userId}">${user.userName}</a></td>

            <td><a href="renderUser?userId=${user.userId}">Edit</a></td>
            <td><a href="deleteUser?userId=${user.userId}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

<script>
    $(document).ready(function () {
        $("td").css("font-style", "italic");
        $("th").css("color", "red");
    });
</script>
