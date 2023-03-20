
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit Ad</h1>
<form action="${pageContext.request.contextPath}/edit-ad" method="post">
    <input type="hidden" name="adId" value="${ad.id}">
    <div>
        <label for="title">Title</label>
        <input type="text" id="title" name="title" value="${ad.title}">
    </div>
    <div>
        <label for="description">Description</label>
        <textarea id="description" name="description">${ad.description}</textarea>
    </div>
    <input type="submit" value="Update Ad">
</form>
</body>
</html>
