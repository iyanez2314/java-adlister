<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <style>
        .toast {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 9999;
            display: none;
        }
    </style>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
<%--            This code will check if the error is null or there is a string with an error message If there is it will display the toast we need --%>
            <c:if test="${not empty error}">
                <div id="toast" class=" toast alert alert-danger">
                    <button type="button" class="close" onclick="closeToast()">&times;</button>
                        ${error}
                </div>
            </c:if>
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
    <script>

<%--        This will be the function that will show the toast --%>
        function showToast() {
            document.getElementById('toast').style.display = 'block';
        }
<%--       This will be the function that will close the toast --%>
        function closeToast() {
            document.getElementById('toast').style.display = 'none';
        }

        <c:if test="${not empty error}">
        // Automatically show the toast when there is an error
        showToast();
        </c:if>
    </script>

</body>
</html>
