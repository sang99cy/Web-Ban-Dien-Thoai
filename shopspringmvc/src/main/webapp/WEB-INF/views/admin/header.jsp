<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đây là trang quản trị</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/bootstrap.min.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath }/resources/frontend/css/style.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath }/resources/frontend/css/style-responsive.css" rel="stylesheet" />
<!-- font CSS -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/font.css" type="text/css" /> --%>
<link href="${pageContext.request.contextPath }/resources/frontend/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/morris.css" type="text/css" />
<!-- calendar -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/monthly.css">
<!-- //calendar
//font-awesome icons
 -->
<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/frontend/js/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/frontend/js/morris.js"></script>
</head>
<body>
	<header class="header fixed-top clearfix">
		<!--logo start-->
		<div class="brand">
			<a href="${pageContext.request.contextPath }/admin" class="logo"> Quản Trị </a>
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars"></div>
			</div>
		</div>
		<!--logo end-->
		<div class="top-nav clearfix">
			<!--search & user info start-->
			<ul class="nav pull-right top-menu">
				<li><input type="text" class="form-control search"
					placeholder=" Search"></li>
				<!-- user login dropdown start-->
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <img alt=""
						src="${pageContext.request.contextPath }/resources/frontend/images/2.png"> <span class="username">Hi ${logininfo.hoten}</span> <b
						class="caret"></b>
				</a>
					<ul class="dropdown-menu extended logout">
						<li><a href="#"><i class=" fa fa-suitcase"></i>Thông tin cá nhân</a></li>
						<li><a href="#"><i class="fa fa-cog"></i> Cài đặt</a></li>
						<li><a href="${pageContext.request.contextPath }/admin"><i class=" fa fa-sign-in"></i>Đăng nhập</a></li>
						<li><a href="${pageContext.request.contextPath }/admin-dangxuat"><i class="fa fa-key"></i> Log
								Out</a></li>
					</ul></li>
				<!-- user login dropdown end -->

			</ul>
			<!--search & user info end-->
		</div>
	</header>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.dcjqaccordion.2.7.js"></script>
	
</body>
</html>