<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Редактировать человека</title>
</head>
<body>
<h2>Редактировать человека</h2>

<form:form method="POST" action="${pageContext.request.contextPath}/people/update" modelAttribute="person">
    <input type="hidden" name="id" value="${person.id}">

    <table>
        <tr>
            <td><form:label path="name">Имя:</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="lastName">Фамилия:</form:label></td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td><form:label path="age">Возраст:</form:label></td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Обновить"/>
            </td>
        </tr>
    </table>
</form:form>

<a href="${pageContext.request.contextPath}/people">Назад к списку</a>
</body>
</html>