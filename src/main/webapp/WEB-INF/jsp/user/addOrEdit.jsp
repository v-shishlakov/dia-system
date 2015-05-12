<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddOrEditUser.jsp</title>
</head>
<body>
    <h3>Add Or Edit User</h3>

    <form:form action="saveUser" modelAttribute="user" method="POST">
        <table>
            <tr>
                <td>
                    <form:input path="name" value="${user.name.trim()}"/>
                    <form:input type="hidden" path="id" value="${user.id}"/>
                </td>
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
                
        </table>
    </form:form>


</body>
</html>
