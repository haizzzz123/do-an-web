<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./template/admin/home.css">
<link rel="stylesheet" href="./template/admin/nick.css">
<link rel="stylesheet" href="./template/front/themify-icons-font/themify-icons/themify-icons.css">
</head>
<body>

       <%@ include file="/common/admin/header.jsp"%>
    <div id="main-nick" class="main-nick">
        
            <table class="nick-table">
                <tr>
                    
                    <th>ma id</th>
                    <th>tai khoan</th>
                    <th>mat khau</th>
                    <th>ho va ten</th>
                    <th>email</th>
                    <th>dia chi</th>
                    <th>so dien thoai</th>
                    <th>quyen truy cap</th>
                    <th>tuy chon</th>
                </tr>
                <c:forEach items="${listAcc}" var="t">
                <tr>
                    
                    <td>${t.id}</td>
                    <td>${t.tenDangNhap}</td>
                    <td>${t.matKhau}</td>
                    <td>${t.hoVaTen}</td>
                    <td>${t.email}</td>
                    <td>${t.diaChi}</td>
                    <td>${t.sdt}</td>
                    <td>${t.phanQuyen}</td>
                    <td>
                    <a href="admin-update-nick?idNick=${t.id}">chinh sua</a>/ 
                    <a href="admin-delete-nick?idNick=${t.id}">xoa</a>/
                    <a href="admin-danh-sach-hoa-don?idNick=${t.id}">hoa don</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
        
    </div>
</body>
</html>