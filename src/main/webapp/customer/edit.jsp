<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/30/2024
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Sửa ở đây</h1>
<form action="customers" method="post">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="${customer.id}">
    <input type="text" id="name" name="name" value="${customer.name}">
    <input type="text" id="address" name="address" value="${customer.address}">
    <input type="text" id="email" name="email" value="${customer.email}">
    <button type="submit" >cap nhat</button>
</form>
</body>
</html>
