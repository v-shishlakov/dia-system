<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

    <table>
        <tr>
            <th>name</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <th>${user.name}</th>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
