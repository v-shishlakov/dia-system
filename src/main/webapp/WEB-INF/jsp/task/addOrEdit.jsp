<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddOrEditUser.jsp</title>
</head>
<body>
<h3>Add Or Edit User</h3>

<form:form action="saveTask" modelAttribute="task" method="POST">
    <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="500">
        <tr>
            <td>
                <form:input path="name" value="${task.name.trim()}"/>
                <form:input type="hidden" path="id" value="${task.id}"/>
                <form:input type="hidden" path="taskId" value="${task.taskId}"/>
            </td>
            <td>
                <input type="submit" value="Save"/>
            </td>
        </tr>
            
    </table>
</form:form>


</body>
</html>
