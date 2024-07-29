<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/29/2024
  Time: 8:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Xoá sản phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Xoá sản phẩm</h1>
    <p>Bạn có chắc chắn muốn xoá sản phẩm này không?</p>
    <form action="products" method="post">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="id" value="${product.id}">
        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="name" name="name" value="${product.name}" readonly>
        </div>
        <div class="form-group">
            <label for="price">Giá sản phẩm:</label>
            <input type="text" class="form-control" id="price" name="price" value="${product.price}" readonly>
        </div>
        <div class="form-group">
            <label for="description">Mô tả:</label>
            <textarea class="form-control" id="description" name="description" readonly>${product.description}</textarea>
        </div>
        <div class="form-group">
            <label for="manufacturer">Nhà sản xuất:</label>
            <input type="text" class="form-control" id="manufacturer" name="manufacturer" value="${product.manufacturer}" readonly>
        </div>
        <button type="submit" class="btn btn-danger">Xoá</button>
        <a href="/products" class="btn btn-secondary">Huỷ</a>
    </form>
</div>
</body>
</html>

