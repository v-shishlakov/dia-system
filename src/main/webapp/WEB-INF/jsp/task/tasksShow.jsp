<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>
</head>
<body>
    <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="500">
        <tr>
            <th>user name</th>
            <th colspan="2">action</th>
        </tr>
        <tr>
            <td><a href="renderTask?userId=${userId}&taskId=0">add Task</a></td>
        </tr>
        <c:forEach items="${tasks}" var="task">
            <tr>
                <td>${task.taskName.trim()}</td>
                <td>${task.estimateFirst.trim()}</td>
                <td>${task.estimateSecond.trim()}</td>
                <td>${task.timeOfWork.trim()}</td>
                <td>${task.date}</td>
                <td>${task.startTime.trim()}</td>
                <td>${task.finalTime.trim()}</td>

                <td><a href="renderTask?userId=${userId}&taskId=${task.taskId}">Edit</a></td>
                <td><a href="deleteTask?userId=${userId}&taskId=${task.taskId}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
