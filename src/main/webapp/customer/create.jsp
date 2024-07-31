<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/30/2024
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Thêm học viên mới</h1>
<form action="customers" method="post">
    <input type="hidden" name="action" value="create">
    <input type="text" id="id" name="id">
    <input type="text" id="name" name="name">
    <input type="text" id="address" name="address">
    <input type="text" id="email" name="email">
    <button type="submit" >them</button>
</form>
</body>
</html>
