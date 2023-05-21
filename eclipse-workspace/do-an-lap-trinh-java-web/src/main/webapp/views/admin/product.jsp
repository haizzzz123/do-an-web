<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./template/admin/home.css">
<link rel="stylesheet" href="./template/front/themify-icons-font/themify-icons/themify-icons.css">
</head>
<body>
<%@ include file="/common/admin/header.jsp"%>
    <div id="main" class="main">
        <div id="content" class="content">
           
            <div class="product-body " style="
    display: flex;
    justify-content: center;">
                
                    <div class="product-box">
                        <div class="product-header"><p>thong tin san pham</p></div>
                        <div class="product-main">
                        
                        <form action="admin-update-san-pham" method="POST">
                        <input type="hidden" name="updateIdSanPham" value="${product.idSanPham }">
                            <ul>
                                <li>ten san pham</li>
                                <li><input type="text" name="updateTenSanPham" value="${product.tenSanPham }"></li>
                                <li>gia tien</li>
                                <li><input type="text" name="updateGiaSanPham" value="${product.giaSanPham }"></li>
                                <li>hang</li>
                                <li><input type="text" name="updateHangSanPham" value="${product.nhaSanXuat }"></li>
                                
                                
                                <li>
                                <button type="submit" class="login-btn" style="background: #ff9300;height: 28px;line-height: 28px;text-align: center;font-weight: 700;width: 100px;">
                                chinh sua
                                </button></li>
                            </ul>
                        </form>
                        <div style="background: #ff9300;height: 28px;line-height: 28px;text-align: center;font-weight: 700;width: 100px;">
                        <a href="admin-delete-san-pham?idSanPhamXoa=${product.idSanPham }" >
                       xoa
                       </a>
                        </div>
                       
                        </div>
                    </div>
                    
            
                
            </div>
        </div>
    </div>
</body>
</html>