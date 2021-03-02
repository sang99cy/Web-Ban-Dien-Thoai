<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>slider page</title>
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/price-range.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/responsive.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/custom.css"
	rel="stylesheet">
<style type="text/css">
#sang {
	background: radial-gradient(circle, transparent 20%, slategray 20%, slategray 80%,
		transparent 80%, transparent),
		radial-gradient(circle, transparent 20%, slategray 20%, slategray 80%,
		transparent 80%, transparent) 50px 50px,
		linear-gradient(#A8B1BB 8px, transparent 8px) 0 -4px,
		linear-gradient(90deg, #A8B1BB 8px, transparent 8px) -4px 0;
	background-color: slategray;
	background-size: 100px 100px, 100px 100px, 50px 50px, 50px 50px;
}
  img{
     width: 500px;
  }
</style>
</head>

<body>
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>E</span>-SHOPPER</h1>
									<h2>Free E-Commerce Template</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="${pageContext.request.contextPath }/resources/images/sanpham/oppo-a92.jpg" class="girl img-responsive" alt="" />
									<!-- <img src="resources/images/home/pricing.png"  class="pricing" alt="" /> -->
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>E</span>-SHOPPER</h1>
									<h2>100% Responsive Design</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="${pageContext.request.contextPath }/resources/images/sanpham/oppo-a92.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png"  class="pricing" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>E</span>-SHOPPER</h1>
									<h2>Free Ecommerce Template</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="${pageContext.request.contextPath }/resources/images/sanpham/oppo-a92.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png" class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->





	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>