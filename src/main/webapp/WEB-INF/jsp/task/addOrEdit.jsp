<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddOrEditTask.jsp</title>
</head>
<body>
<a href="getTaskList?userId=${userId}"><<< beak</a>

    <form:form modelAttribute="task" action="saveTask" method="POST">

        <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
            <h3 align="center">Add Or Edit Task</h3>
            <tr>
                <th><form:label path="taskName">Task Name:</form:label></th>
                <td><form:input path="taskName"  value="${task.taskName}"/></td>
            </tr>
            <tr>
                <th><form:label path="estimateFirst">Estimate First:</form:label></th>
                <td><form:input path="estimateFirst"  value="${task.estimateFirst}"/></td>
            </tr>
            <tr>
                <th><form:label path="estimateSecond">Estimate Second:</form:label></th>
                <td><form:input path="estimateSecond"  value="${task.estimateSecond}"/></td>
            </tr>
            <tr>
                <th><form:label path="date">Date:</form:label></th>
                <td><form:input path="date"  value="${task.date}"/></td>
            </tr>
            <tr>
                <th><form:label path="startTime">Start Time:</form:label></th>
                <td><form:input path="startTime"  value="${task.startTime}"/></td>
            </tr>
            <tr>
                <th><form:label path="finalTime">Final Time:</form:label></th>
                <td><form:input path="finalTime"  value="${task.finalTime}"/></td>
            </tr>
            <tr>
                <th><form:label path="timeOfWork">Time Of Work:</form:label></th>
                <td><form:input path="timeOfWork" value="${task.timeOfWork}"/></td>
            </tr>
            <form:input type="hidden" path="taskId" value="${task.taskId}"/>
            <input type="hidden" name="user.userId"  value="${userId}"/>

            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"/></td>
            </tr>                
        </table>
    </form:form>
</body>
</html>
