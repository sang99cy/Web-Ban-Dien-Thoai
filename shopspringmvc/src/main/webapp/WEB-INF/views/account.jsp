<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>đăng kí</title>
<link href="${pageContext.request.contextPath }/<c:url value = "resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
</head>
<body>
	
	<jsp:include page="header.jsp" />
	<section id="form">
		<!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>Đăng nhập hệ thống</h2>
						<form:form action="${pageContext.request.contextPath }/dang-nhap" method="post" modelAttribute="taikhoan">
							<p style="color: red">${status}</p>
							<form:input type="email" placeholder="địa chỉ email đăng nhập"
								path="tendangnhap" />
							<p style="color: red"></p> 	
							<form:input type="password" placeholder="mật khẩu đăng nhập" path="matkhau" /> <span>
								<%-- <form:input type="checkbox" class="checkbox"/> Duy trì đăng nhập --%>
							</span>
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form:form>
					</div>
					<!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form">
						<!--sign up form-->
						<h2>Đăng ký thành viên</h2>
						<form:form action="${pageContext.request.contextPath }/dang-ky" method="post" modelAttribute="taikhoan">
							<p style="color: red"></p>
							<form:input type="text" placeholder="Họ và Tên" path="tentaikhoan"
								value="" />
							<p style="color: red"></p>
							<form:input type="email" placeholder="địa chỉ email đăng ký"
								path="tendangnhap" value="" />
							<p style="color: red"></p>
							<form:input type="password" placeholder="mật khẩu đăng ký"
								path="matkhau" value="" />
							<p style="color: red"></p>
							<form:input type="text" placeholder="nơi ở hiện tại"
								path="diachi" value="" />	
							<p style="color: red"></p>	
							<form:select path="vaitro">
							    <option value="0" label="ADMIN"/>
							     <option value="1" label="USER"/>
							</form:select>
							<p style="color: red">${massages}</p>	
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form:form>
					</div>
					<!--/sign up form-->
				</div>
			</div>
		</div>
	</section>
	<!--/form-->
	<jsp:include page="footer.jsp" />

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/price-range.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>