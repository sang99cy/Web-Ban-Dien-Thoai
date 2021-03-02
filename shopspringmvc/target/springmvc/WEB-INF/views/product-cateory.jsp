<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | E-Shopper</title>
    
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
</head>
<body>
   <jsp:include page="header.jsp"/>
   <jsp:include page="slider.jsp"/>
	<section>
		<div class="container">
			<div class="row">
				<%-- <jsp:include page="category.jsp"/> --%>
				<div class="col-sm-9 padding-right">
					<div class="features_items">
						<!--features_items-->
						<h2 class="title text-center">SẢN PHẨM</h2>
						<c:forEach var="sp" items="${pagedListHolder.pageList}">
							<%-- <% for(SanPham sp : listsp){ %> --%>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img src="./images/${sp.hinhanh}" alt="ảnh điện thoại"
												style="height: 250px" />
											<h2>${sp.dongia}VNĐ</h2>
											<p>${sp.tensanpham}</p>
											<a
												href="CartServlet?command=plus&productID=${sp.masanpham}"
												class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>${sp.dongia}VNĐ</h2>
												<p>${sp.tensanpham}</p>
												<a
													href="CartServlet?command=plus&productID=${sp.masanpham}"
													class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="#"><i class="fa fa-plus-square"></i>Thêm
													so sánh </a></li>
											<li><a
												href="ChiTietSanPhamServlet?ma_san_pham=${sp.masanpham}"><i
													class="fa fa-plus-square"></i>Xem chi tiết </a></li>
										</ul>
									</div>
								</div>
							</div>
							<%-- <% } %> --%>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!--code taglib  -->
									<jsp:useBean id="pagedListHolder" scope="request"
										type="org.springframework.beans.support.PagedListHolder" />
									<c:url value="/getAllSPintCategory/1" var="pagedLink">
										<c:param name="p" value="~" />
									</c:url>

									<tg:paging pagedListHolder="${pagedListHolder}"
										pagedLink="${pagedLink}" />
	</section>
	<jsp:include page="footer.jsp" />
	<!--script  -->
 <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>