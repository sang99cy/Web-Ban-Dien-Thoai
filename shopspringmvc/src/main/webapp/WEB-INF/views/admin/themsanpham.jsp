<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="resources/frontend/css/bootstrap.min.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="resources/frontend/css/style.css" rel='stylesheet' type='text/css' />
<link href="resources/frontend/css/style-responsive.css" rel="stylesheet" />
<!-- font CSS -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="resources/frontend/css/font.css" type="text/css" />
<link href="resources/frontend/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="resources/frontend/css/morris.css" type="text/css" />
<!-- calendar -->
<link rel="stylesheet" href="resources/frontend/css/monthly.css">
<!-- //calendar
//font-awesome icons
 -->
<script src="resources/frontend/js/jquery2.0.3.min.js"></script>
<script src="resources/frontend/js/raphael-min.js"></script>
<script src="resources/frontend/js/morris.js"></script>
</head>
<body>

	<section id="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section id="main-content">
			<section class="wrapper">
				<div class="form-w3layouts">
					<section class="panel">
						<header class="panel-heading"> Thêm sản phẩm </header>
						<div class="panel-body">
							<div class="position-center">
							<!--  -->
							<c:url value="/themsanpham" var="themsanpham"></c:url>
								<form id="form-sanpham" role="form" action="<%-- ${themsanpham} --%>"
									method="POST" enctype="multipart/form-data" <%-- modelAttribute="sanpham" --%>>
									<!-- <div class="form-group">
										<label for="exampleInputEmail1">Mã sản phẩm</label> <input
											type="text" name="ma_san_pham" class="form-control"
											id="exampleInputEmail1">
									</div> -->
									<div class="form-group">
										<label for="exampleInputEmail1">Danh mục</label> 
											<select name="danhMuc" class="form-control">
											<c:forEach var="listDM" items="${listDM}"> 
											   <option value="${listDM.madanhmuc}">${listDM.tendanhmuc}</option>
											</c:forEach>    
											</select>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Tên sản phẩm</label> <input
											type="text" name="tensanpham" class="form-control"
											id="exampleInputEmail1"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Avatar</label> <input
											type="file" id="hinhanh" name="hinhanh" class="form-control"
											id="exampleInputEmail1"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Số lượng</label>
											<input min="1" value="1" type="number" id="soluong" name="soluong" class="form-control" placeholder="soluong"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Mô tả</label> <textarea
											style="resize: none" rows="8" name="mota" class="form-control"
											id="exampleInputEmail1"></textarea>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Đơn giá</label> <input
											 name="dongia" class="form-control"
											id="exampleInputEmail1"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Giảm giá</label> <input
											 name="giamgia" class="form-control"
											id="exampleInputEmail1"/>
									</div>
									
									<button id="btnThemSanPham" class="btn btn-info">Thêm sản phẩm</button>
								</form>
							</div>
                       
						</div>
					</section>
				</div>
			</section>
			<jsp:include page="footer.jsp" />
		</section>



	</section>
	<script src="resources/frontend/js/Custom.js"></script>
	<script src="resources/frontend/js/bootstrap.js"></script>
	<script src="resources/frontend/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/frontend/js/scripts.js"></script>
	<script src="resources/frontend/js/jquery.slimscroll.js"></script>
	<script src="resources/frontend/js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="resources/frontend/js/jquery.scrollTo.js"></script>
</body>
</html>