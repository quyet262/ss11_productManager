<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/29/2024
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Thêm sản phẩm mới</h1>
    <form action="products" method="post">
        <input type="hidden" name="action" value="create">
        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="price">Giá sản phẩm:</label>
            <input type="text" class="form-control" id="price" name="price" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả:</label>
            <textarea class="form-control" id="description" name="description" required></textarea>
        </div>
        <div class="form-group">
            <label for="manufacturer">Nhà sản xuất:</label>
            <input type="text" class="form-control" id="manufacturer" name="manufacturer" required>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
</div>
</body>
</html>

