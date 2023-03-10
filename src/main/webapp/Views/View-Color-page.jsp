<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background: ${colorName};
        }
    </style>
</head>
<body>
    <h1>
        View color page ${colorName}
    </h1>
 <h1>
     <%= request.getAttribute("colorName")%>
 </h1>
</body>
</html>
