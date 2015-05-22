<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddOrEditUser.jsp</title>
</head>
<body>
<a href="/"><<< beak</a>
    <form:form action="saveUser"  commandName="user" method="POST">
        <table style="margin: auto" cellspacing="0" border="1" cellpadding="3" width="auto" bgcolor="#fff8dc">
            <caption><h3>Add Or Edit User</h3></caption>
            <tr>
                <th>Name User :</th>
                <td>
                    <form:input path="userName" value="${user.userName}"/>
                    <form:input type="hidden" path="userId" value="${user.userId}"/>
                </td>
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
                
        </table>
    </form:form>


</body>
</html>
