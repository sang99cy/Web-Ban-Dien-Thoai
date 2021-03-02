<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Checkout | E-Shopper</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
   <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
     <jsp:include page="header.jsp"/>
     <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Trang chủ</a></li>
				  <li class="active">Thanh toán</li>
				</ol>
			</div><!--/breadcrums-->
			<div class="shopper-informations">
				<div class="row" style="">
					<div class="col-sm-6" style="border: 3px solid black;">
						<div class="shopper-info">
							<p style="text-align: center;"><span style="font-family: fantasy;">Thông tin giao hàng</span></p>
							<form:form action="checkout" method="post" modelAttribute="bills">
							   <p>Họ tên:</p>
							    <form:input type="text" path="hoten" placeholder="Nhập họ tên"/>
							   <p>email:</p>
							    <form:input type="text" path="email" placeholder="abc@gmail.com"/>
							   <p>Số điện thoại:</p>
							    <form:input type="text" path="sodienthoai" placeholder="Điện thoại liên hệ"/> 
							   <p>Địa chỉ giao hàng:</p>
							   <form:textarea  path="diachi"  placeholder="Địa chỉ giao hàng" rows="10"></form:textarea>
							   
							  
							   <form:button class="btn btn-primary">Đặt Hàng</form:button>
							
							</form:form>
							   <br>
				
						</div>
					</div>		
				</div>
			</div>
		</div>
	</section> <!--/#cart_items-->
	<br/><br/>
	<jsp:include page="footer.jsp"/> 
</body>

</html>