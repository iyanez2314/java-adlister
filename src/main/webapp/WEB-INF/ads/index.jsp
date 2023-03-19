<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <form method="GET">
        <div class="form-group">
            <input type="text" class="form-control" name="search" placeholder="Search all ads by username">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <form method="POST">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <input type="hidden" name="userId" value="${ad.userId}">
                <input type="hidden" name="adId" value="${ad.id}">
                <input type="submit" class="btn btn-block btn-primary" value="Check out this ad!">
            </form>

        </div>
    </c:forEach>
</div>

</body>
</html>
