
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="org.springframework.beans.support.PagedListHolder" %>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>thông tin chi tiết sản phẩm</title>

    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">   
	<link href="${pageContext.request.contextPath }/resources/css/all.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/fonts/fontawesome-webfont.woff" rel="stylesheet"> 
</head>
<body>
    
	<jsp:include page="header.jsp" />
	<section>
		<div class="container">
			<div class="row">
				<jsp:include page="category.jsp" />
				<div class="col-sm-9 padding-right">
					<div class="product-details">
						<!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img style="width: 300px" src="${pageContext.request.contextPath }/resources/images/sanpham/${details.hinhanh}" alt="" />

							</div>

						</div>

						<div class="col-sm-7">
							<div class="product-information">
								<!--/product-information-->
								<img src="${pageContext.request.contextPath }/resources/images/product-details/new.jpg" class="newarrival"
									alt="" />
								<h2>${details.tensanpham}</h2>
								<p>
									Mã sản phẩm :
									${details.masanpham}</p>
								<span> <span><fmt:formatNumber type="number" maxFractionDigits="3"
															value="${details.dongia}" />
														VNĐ</span>
								</span>
								<p>
								<a href="${pageContext.request.contextPath }/AddCart/${details.masanpham}" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
									<!-- <button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng -->
									</button>
								</p>
								<p>
									<b>Số lượng :</b>
								${details.soluong}
									<b>Sản Phẩm</b>
								</p>
								<p>
									<b>Giảm giá :</b>
								${details.giamgia}<b>%</b>
								</p>

								<a href=""><img src="${pageContext.request.contextPath }/resources/images/product-details/share.png"
									class="share img-responsive" alt="" /></a>
							</div>
							<!--/product-informatFion-->
						</div>
					</div>
					<!--/product-details-->

					<div class="category-tab shop-details-tab">
						<!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Chi tiết sản phẩm</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company
										Profile</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Bình luận
										(5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="companyprofile">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="tag">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Add to cart
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade active in" id="reviews">
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC
												2014</a></li>
									</ul>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat.Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<p>
										<b>Write Your Review</b>
									</p>

									<form action="#">
										<span> <input type="text" placeholder="Your Name" /> <input
											type="email" placeholder="Email Address" />
										</span>
										<textarea name=""></textarea>
										<b>Rating: </b> <img src="${pageContext.request.contextPath }/resources/images/product-details/rating.png"
											alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit</button>
									</form>
								</div>
							</div>

						</div>
					</div>
					<!--/category-tab-->


				</div>
			</div>
		</div>
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