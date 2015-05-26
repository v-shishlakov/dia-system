<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%--<script src="http://code.jquery.com/jquery-1.11.3.js"></script>--%>


    <title>Users</title>
</head>
<body>
<%--<script>--%>
<%--$(document).ready(function () {--%>
<%--alert("Документ доступен для выполнения скриптов");--%>
<%--});--%>
<%--</script>--%>


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
