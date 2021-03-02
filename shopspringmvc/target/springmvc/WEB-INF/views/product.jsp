
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product page</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/prettyPhoto.css" rel="stylesheet">
<link href="resources/css/price-range.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
</head>
<body>
	<div class="col-sm-12 "><!--padding-right  -->
		<div class="features_items">
		    <div class="recommended_items">
			<!--recommended_items-->
			<h2 class="title text-center">SẢN PHẨM TÌM KIẾM NHIỀU NHẤT</h2>
			 <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
			 <div class="carousel-inner">	
            <c:if test="${listSP.size() > 0}">
				  <div class="item active">
				  	
			<c:forEach var="sp" items="${listSP}" varStatus="loop">
			     	<div class="col-sm-3">
							<div class="<product-image-wrapper ">
								<div class="single-products">
									<div class="productinfo text-center "><!--  -->
										<img style="width: 130px" src="resources/images/sanpham/${sp.hinhanh}" alt="" />
										<h2><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sp.dongia}" />VNĐ</h2>
										<p>${sp.tensanpham}</p>
										<a href="" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
							</div>
						 </div>
						<c:if test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == listSP.size() }">
						     
						      </div>
			    
			    <c:if test="${ (loop.index + 1) < listSP.size() }">
				
			     
				  <div class="item">
				  		
									</c:if>
			</c:if>
			</c:forEach>
			</c:if>
			</div>
			<a class="left recommended-item-control"
					href="#recommended-item-carousel" data-slide="prev"> <i
					class="fa fa-angle-left"></i>
				</a> <a class="right recommended-item-control"
					href="#recommended-item-carousel" data-slide="next"> <i
					class="fa fa-angle-right"></i>
				</a>
				</div>	
		</div>
		<!--/recommended_items-->	
			<!--features_items-->
			<br>
			<h2 class="title text-center">SẢN PHẨM NỔI BẬT NHẤT</h2>
			<c:if test="${listSP.size() > 0}">
			   <div class="lap">
			<c:forEach var="sp" items="${listSP}" varStatus="loop">
			<div class="col-sm-3">
				<div class="product-image-wrapper">
					<div class="single-products">
						<div class="productinfo text-center">
							<img src="resources/images/sanpham/${sp.hinhanh}" alt="ảnh điện thoại" style="height: 250px" />
							<h2><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sp.dongia}" />VNĐ</h2>
							<p>${sp.tensanpham}</p>
							<a href="AddCart/${sp.masanpham}" class="btn btn-default add-to-cart"><i
								class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
						</div>
						<div class="product-overlay">
							<div class="overlay-content">
								<h2><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${sp.dongia}" />VNĐ</h2>
								<p>${sp.tensanpham}</p>
								<a href="AddCart/${sp.masanpham}" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
							</div	>
						</div>
					</div>
					<div class="choose">
						<ul class="nav nav-pills nav-justified">
							<li><a href="#"><i class="fa fa-plus-square"></i>Thêm so sánh
									</a></li>
							<li><a href="${pageContext.request.contextPath }/chitietsanpham/${sp.masanpham}"><i class="fa fa-plus-square"></i>Xem chi tiết
									</a></li>
						</ul>
					</div>
				</div>
			</div>
			<c:if test="${ (loop.count + 1) % 4 == 0 || (loop.count + 1)  == listSP.size() }">
			    </div>
			    <c:if test="${ (loop.count + 1) < listSP.size() }">
								<div class="lap">		
									</c:if>
			</c:if>
			<%-- <% } %> --%>
         </c:forEach>
         </c:if>
		</div>
		<!--features_items-->

		
		

		

	</div>
<!--script  -->
 <script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/price-range.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/main.js"></script>
</body>
</html>