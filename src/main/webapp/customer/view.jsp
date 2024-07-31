<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/30/2024
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Chi tiết học viên</h1>
    <div class="form-group">
        <label for="name">Tên học viên:</label>
        <input type="text" class="form-control" id="name" name="name" value="${customer.name}" readonly>
    </div>
    <div class="form-group">
        <label for="price">Địa chỉ:</label>
        <input type="text" class="form-control" id="address" name="address" value="${customer.address}" readonly>
    </div>
    <div class="form-group">
        <label for="description">Email:</label>
        <textarea class="form-control" id="email" name="email" readonly>${customer.email}</textarea>
    </div>
    <a href="/customers" class="btn btn-secondary">Quay lại</a>
</div>
</body>
</html>
