<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>
</head>
<body>
<a href="/"><<< beak</a>
<table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
    <caption><h3>Tasks</h3></caption>
    <tr>
        <th>Task Name:</th>
        <th>Estimate First:</th>
        <th>Estimate Second:</th>
        <th>Time Of Work:</th>
        <th>Date:</th>
        <th>Start Time:</th>
        <th>Final Time:</th>
        <th colspan="2">action</th>
    </tr>
    <tr>
        <td colspan="9"><a href="renderTask?userId=${userId}&taskId=0">add Task</a></td>
    </tr>
    <c:forEach items="${tasks}" var="task">
        <tr>
            <td>${task.taskName}</td>
            <td>${task.estimateFirst}</td>
            <td>${task.estimateSecond}</td>
            <td>${task.timeOfWork}</td>
            <td>${task.date}</td>
            <td>${task.startTime}</td>
            <td>${task.finalTime}</td>

            <td><a href="renderTask?userId=${userId}&taskId=${task.taskId}">Edit</a></td>
            <td><a href="deleteTask?userId=${userId}&taskId=${task.taskId}">Delete</a></td>
    </c:forEach>
</table>

</body>
</html>
