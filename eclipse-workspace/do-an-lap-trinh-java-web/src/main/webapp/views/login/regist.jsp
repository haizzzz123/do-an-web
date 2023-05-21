<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./template/login/regist.css">
</head>
<body>
	<div class="regist">
        <div class="regist-box">
            <div class="regist-header"><p>${t}</p></div>
            <form action="regist" method="GET">
                <div class="regist-main">
                    <ul>
                        <li>ten dang nhap</li>
                        <li><input type="text" name="tenDangNhap"></li>
                        <li>mat khau</li>
                        <li><input type="text" name="matKhau"></li>
                        <li>ho va ten</li>
                        <li><input type="text" name="hoVaTen"></li>
                        <li>so dien thoai</li>
                        <li><input type="text" name="sdt"></li>
                        <li>dia chi</li>
                        <li><input type="text" name="diaChi"></li>
                        <li>email</li>
                        <li><input type="text" name="email"></li>
                        <li><button type="submit" class="regist-btn">dang ki</button></li>
                    </ul>
                </div>
            </form>
            
        </div>
        

    </div>
</body>
</html>