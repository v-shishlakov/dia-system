<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="500">
        <tr>
            <th>user name</th>
            <th colspan="2">action</th>
        </tr>
        <tr>
            <td><a href="renderUser?userId=0">add User</a></td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.userName.trim()}</td>
                <td><a href="showTask?userId=${user.userId}">Tasks</a></td>
                <td><a href="renderUser?userId=${user.userId}">Edit</a></td>
                <td><a href="deleteUser?userId=${user.userId}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
