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

<!-- Кнопка редактирования -->
<a href="${pageContext.request.contextPath}/people/edit?id=${person.id}" style="display:inline-block; padding:5px 10px; background:#007bff; color:white; text-decoration:none; border-radius:4px; margin-right:10px;">Редактировать</a>

<form action="${pageContext.request.contextPath}/people/delete" method="post" style="display:inline;">
    <input type="hidden" name="id" value="${person.id}">
    <input type="submit" value="Удалить" onclick="return confirm('Удалить?')" style="padding:5px 10px; background:#dc3545; color:white; border:none; border-radius:4px; cursor:pointer;">
</form>

<br/><br/>
<a href="${pageContext.request.contextPath}/people">Назад к списку</a>
</body>
</html>