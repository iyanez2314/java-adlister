<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background: ${color};
        }
    </style>
</head>
<body>
  <form method="post" action="/colorpicker">
      <label for="colorpicked">Pick a color</label>
      <input type="color" id="colorpicked" name="colorpicked">
      <button type="submit">choose</button>
  </form>
</body>
</html>
