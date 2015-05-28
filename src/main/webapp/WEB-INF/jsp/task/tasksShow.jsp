<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/ui-lightness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

    <script>
        $(function () {
            $("#startDatePicker").datepicker({
                inline: true,
                dateFormat: "yy-mm-dd"
            });
        });
    </script>
    <script>
        $(function () {
            $("#startDatePicker2").datepicker({
                inline: true,
                dateFormat: "yy-mm-dd"
            });
        });
    </script>


</head>
<body>
<a href="/"><<< beak</a>


<table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
    <form name="form" action="getFilterTaskList">

        <caption><h3>Tasks</h3></caption>
        <tr>
            <th>Task Name</th>
            <th>Estimate First</th>
            <th>Estimate Second</th>
            <th>Time Of Work</th>
            <th>Date</th>
            <th>Total Estimate</th>
            <th>Actual Total</th>
            <th colspan="2">action</th>
        </tr>

        <tr>
            <td colspan="1"><a href="renderTask?userId=${userId}&taskId=0">add Task</a></td>

            <td colspan="8">
                <label for="startDatePicker">Filter by date: </label>
                <input type="date" id="startDatePicker" name="firstDate"/>
                <label for="startDatePicker2">by: </label>
                <input type="date" id="startDatePicker2" name="SecondDate"/>
                <input type="hidden" name="userId" value="${userId}"/>

                <input type="submit" value="filter"/>
            </td>
        </tr>

        <c:forEach items="${tasks}" var="task">
        <tr>
            <td>${task.taskName}</td>
            <td>${task.estimateFirst}</td>
            <td>${task.estimateSecond}</td>
            <td>${task.timeOfWork}</td>
            <td>${task.date}</td>
            <td>${task.totalEstimateTime}</td>
            <td>${task.actualTotalTime}</td>

            <td><a href="renderTask?userId=${userId}&taskId=${task.taskId}">Edit</a></td>
            <td><a href="deleteTask?userId=${userId}&taskId=${task.taskId}">Delete</a></td>
        <tr>
            </c:forEach>
        </tr>
    </form>
</table>
</body>
</html>
