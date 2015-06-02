<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>AddOrEditTask.jsp</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/ui-lightness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

</head>
<body>
<a href="getTaskList?userId=${userId}"><<< beak</a>

<form:form modelAttribute="task" action="saveOrUpdateTask" method="POST">

    <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
        <h3 align="center">Add Or Edit Task </h3>
        <tr>
            <th><form:label path="taskName">Task Name:</form:label></th>
            <td><form:input path="taskName" value="${task.taskName}"/></td>
        </tr>
        <tr>
            <th><form:label path="estimateFirst">Estimate First:</form:label></th>
            <td><form:input path="estimateFirst" value="${task.estimateFirst}"/></td>
        </tr>
        <tr>
            <th><form:label path="estimateSecond">Estimate Second:</form:label></th>
            <td><form:input path="estimateSecond" value="${task.estimateSecond}"/></td>
        </tr>
        <tr>
            <th><form:label path="date">Date:</form:label></th>
            <td><form:input id="startDatePicker" path="date" value="${task.date}"/></td>
        </tr>
        <tr>
            <th><form:label path="totalEstimateTime">Total Estimate:</form:label></th>
            <td><form:input path="totalEstimateTime" value="${task.totalEstimateTime}"/></td>
        </tr>
        <tr>
            <th><form:label path="actualTotalTime">Actual Total:</form:label></th>
            <td><form:input path="actualTotalTime" value="${task.actualTotalTime}"/></td>
        </tr>
        <tr>
            <th><form:label path="timeOfWork">Time Of Work:</form:label></th>
            <td><form:input path="timeOfWork" value="${task.timeOfWork}"/></td>
        </tr>
        <form:input type="hidden" path="taskId" value="${task.taskId}"/>
        <input type="hidden" name="user.userId" value="${userId}"/>
        <input type="hidden" name="user.userName" value="${userName}"/>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Save"/></td>
        </tr>
            
    </table>

</form:form>
</body>
</html>

<script>
    $(function () {
        $("#startDatePicker").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd"
        });
    });
</script>

