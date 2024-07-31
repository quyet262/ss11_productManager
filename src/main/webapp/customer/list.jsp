<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách học viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Danh sách học viên</h1>
    <div class="mb-3">
        <form action="customers" method="get" class="d-flex">
            <input type="hidden" name="action" value="search">
            <input type="text" name="search" id="search" class="form-control me-2" placeholder="Tìm kiếm...">
            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
        </form>
    </div>
    <div class="d-flex justify-content-end mb-3">
        <a href="customers?action=create" class="btn btn-success">Thêm học viên mới</a>
    </div>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Địa chỉ</th>
                <th>Email</th>
                <th>Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customers}">
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.name}</td>
                    <td>${customer.address}</td>
                    <td>${customer.email}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <a href="customers?action=edit&id=${customer.id}" class="btn btn-warning btn-sm">Sửa</a>
                            <a href="customers?action=delete&id=${customer.id}" class="btn btn-danger btn-sm">Xóa</a>
                            <a href="customers?action=view&id=${customer.id}" class="btn btn-info btn-sm">Xem</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
