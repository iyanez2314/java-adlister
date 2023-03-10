<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Welcome to the ads page!</h1>
    <c:forEach var="adsInDB" items="${ads}">
        <div class="product">
            <h2>${adsInDB.title}</h2>
            <h2>${adsInDB.description}</h2>
        </div>
        <hr/>
    </c:forEach>
</body>
</html>
