<%@page import="com.niit.java.Model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>header page</title>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/all.css" rel="stylesheet">
</head>
<body>
   	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> 0332440496</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> quangsang99hn@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/explore"><i class="fa fa-twitter" target="_blank"></i></a></li>
								<li><a href="https://www.linkedin.com/" target="_blank"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="https://accounts.google.com/signin/v2/recoveryidentifier?hl=vi&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath }/resources/images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right ">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									VN
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath }/?language=en">EN</a></li>
									<li><a href="${pageContext.request.contextPath }/?language=vi_VN">VN</a></li>
								</ul>
							</div>
							<div class="btn-group">
								
							</div>
							
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="<c:url value="/gio-hang"/>"><i class="fa fa-shopping-cart"></i>Giỏ Hàng<br><span>${TotalQuantityCart} Sản phẩm</span><br/><span>
								<fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${TotalPriceCart}" />VNĐ</span></a></li>
								<li><a href="${pageContext.request.contextPath }/dang-ky-form"><i class="fa fa-lock"></i><spring:message code="Login" text="default text" /></a></li>
								<li><a href="${pageContext.request.contextPath }/dang-xuat"><i class="fa fa-user"></i>Tài Khoản ${logininfo.tendangnhap}</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
						    
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.jsp" class="active">Trang Chủ</a></li>
								<c:forEach items="${listDM}" var="dm">
                                 <li><a href="${pageContext.request.contextPath }/getAllSPintCategory/${dm.madanhmuc}">${dm.getTendanhmuc()}</a></li>
                                 </c:forEach>
								<li class="fab fa-facebook-square" style="font-size: 60px"><a href="contact-us.html">Khuyến Mãi</a></li>
							</ul>
							
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
</body>
</html>