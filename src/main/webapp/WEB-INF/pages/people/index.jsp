<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Все люди</title>
</head>
<body>
<h2>Список людей</h2>

<c:forEach var="person" items="${people}">
    <a href="${pageContext.request.contextPath}/people/show?id=${person.id}">${person.name}</a>
    <br/>
</c:forEach>

<a href="${pageContext.request.contextPath}/people/new">Create new person</a>
</body>
</html>