<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/30/2024
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Kết quả bạn muốn tìm</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Tên</th>
        <th>Địa chỉ</th>
        <th>Email</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.address}</td>
            <td>${customer.email}</td>
        </tr>
    </c:forEach>
</table>
<a href="/customers">Quay lại</a>
</body>
</html>
