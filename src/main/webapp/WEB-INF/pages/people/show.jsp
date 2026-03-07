<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Человек</title>
</head>
<body>
<h2>Информация о человеке</h2>

<p>ID: ${person.id}</p>
<p>Имя: ${person.name}</p>
<p>Фамилия: ${person.lastName}</p>
<p>Возраст: ${person.age}</p>

<form action="${pageContext.request.contextPath}/people/delete" method="post">
    <input type="hidden" name="id" value="${person.id}">
    <input type="submit" value="Удалить" onclick="return confirm('Удалить?')">
</form>

<br/>
<a href="${pageContext.request.contextPath}/people">Назад к списку</a>
</body>
</html>