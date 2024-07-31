<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/30/2024
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Xoá học viên</h1>
<p>Bạn có chắc là muốn xoá không</p>
<form action="customers" method="post">
    <input type="hidden" name="action" value="delete">
    <input type="hidden" name="id" value="${customer.id}">
    <input type="text" id="name" name="name" value="${customer.name}">
    <input type="text" id="address" name="address" value="${customer.address}">
    <input type="text" id="email" name="email" value="${customer.email}">
    <button type="submit">Xoá</button>
    <a href="/customers">Huỷ</a>
</form>
</body>
</html>
