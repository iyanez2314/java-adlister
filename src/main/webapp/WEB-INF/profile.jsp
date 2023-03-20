<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <form method="POST">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <input type="hidden" name="userId" value="${ad.userId}">
                <input type="hidden" name="adId" value="${ad.id}">
                <input type="submit" class="btn btn-block btn-primary" value="Check out this ad!">
                <a href="${pageContext.request.contextPath}/edit-ad?adId=${ad.id}" class="btn btn-block btn-secondary">Edit Ad</a>
            </form>
        </div>
    </c:forEach>
</body>
</html>
