<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>New person</title>
</head>
<body>
<h2>Create new person</h2>

<form:form method="POST" action="${pageContext.request.contextPath}/people" modelAttribute="person">
    <table>
        <tr>
            <td><form:label path="name">Name:</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="lastName">Last name:</form:label></td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td><form:label path="age">Age:</form:label></td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Create"/>
            </td>
        </tr>
    </table>
</form:form>

<a href="${pageContext.request.contextPath}/people">Back to list</a>
</body>
</html>