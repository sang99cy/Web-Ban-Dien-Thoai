<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Tổng Quan</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Quản lý Danh Mục Sản Phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="<c:url value="/danhmuc-save" />">Thêm danh mục</a></li>
						<li><a href="<c:url value="/danhmuc-list" />">Liệt kê danh mục</a></li>
                      
                    </ul>
                </li>
                
                 <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Quản lý Thông Tin Sản Phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="<c:url value="/sanpham-save" />">Thêm sản phẩm</a></li>
						<li><a href="<c:url value="/sanpham-list" />">Liệt kê sản phẩm</a></li>
                      
                    </ul>
                </li>
               
            </ul>
         </div>
        <!-- sidebar menu end-->
    </div>
</aside>
</body>
</html>