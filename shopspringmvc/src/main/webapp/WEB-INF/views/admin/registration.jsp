<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	    
<!DOCTYPE html>
<head>
<title>Đăng nhập tài khoản Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath }/resources/frontend/css/style.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath }/resources/frontend/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/font.css" type="text/css"/>
<link href="${pageContext.request.contextPath }/resources/frontend/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery2.0.3.min.js"></script>
</head>
<body>
<div class="reg-w3">
<div class="w3layouts-main">
	<h2>ĐĂNG KÝ</h2>
		<form:form action="${pageContext.request.contextPath }/admin-dangky" method="post" modelAttribute="admin">
			<form:input type="text" class="ggg" path="hoten" placeholder="NAME" required=""/>
			<form:input type="email" class="ggg" path="email" placeholder="E-MAIL" required=""/>
			<form:input type="text" class="ggg" path="sodienthoai" placeholder="PHONE" required=""/>
			<form:input type="password" class="ggg" path="matkhau" placeholder="PASSWORD" required=""/>
			<%--  <h4><form:checkbox >Tôi đồng ý với các điều khoản!</h4> --%>
			
				<div class="clearfix"></div>
				<form:button>Đăng kí</form:button>
		</form:form>
		<p>Already Registered.<a href="login.html">Đăng nhập</a></p>
</div>
</div>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.slimscroll.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.scrollTo.js"></script>
</body>
</html>
