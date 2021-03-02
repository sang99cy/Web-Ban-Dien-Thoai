
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/font.css" type="text/css" />
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
    
	<section id="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section id="main-content">
			<section class="wrapper">
				<div class="table-agile-info">
					<div class="panel panel-default">
						<div class="panel-heading">THÔNG TIN SẢN PHẨM</div>
						<div class="row w3-res-tb">
							<!-- <div class="col-sm-5 m-b-xs">
								<select class="input-sm form-control w-sm inline v-middle">
									<option value="0">Bulk action</option>
									<option value="1">Delete selected</option>
									<option value="2">Bulk edit</option>
									<option value="3">Export</option>
								</select>
								<button class="btn btn-sm btn-default">Apply</button>
							</div> -->
							
							<div class="col-sm-3 m-b-xs">
								<div class="input-group">
									<input type="text" class="input-sm form-control"
										placeholder="Search"> <span class="input-group-btn">
										<button class="btn btn-sm btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
							<div class="col-sm-4"></div>
						</div>
						<div class="table-responsive">
						
							<table class="table table-striped b-t b-light">
								<thead>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Mã danh mục</th>
										<th>Tên sản phẩm</th>
										<th>Hình ảnh</th>
										<th>Số lượng</th>
										<th>Mô tả</th>
										<th>Đơn giá</th>
										<th>Giảm giá</th>
										<th style="width: 30px;"></th>
									</tr>
								</thead>
								<%-- <c:forEach items="${listSP}" var="sp"> --%>
								<c:forEach items="${pagedListHolder.pageList}" var="sp">
									<tbody>

										<tr>
											<td>${sp.getMasanpham()}</td>
											<td><span class="text-ellipsis">${sp.danhMuc.madanhmuc}</span></td>
											<td><span class="text-ellipsis">${sp.getTensanpham()}</span></td>
											<td><span class="text-ellipsis">${sp.getHinhanh()}</span></td>
											<td><span class="text-ellipsis">${sp.getSoluong()}</span></td>
											<td><span class="text-ellipsis">${sp.getMota()}</span></td>
											<td><span class="text-ellipsis">${sp.getDongia()}</span></td>
											<td><span class="text-ellipsis">${sp.getGiamgia()}</span></td>
											<td><a href="#" class="active" ui-toggle-class=""><i
													class="fa fa-check text-success text-active"></i></a></td>
											<td><a href="#" class="active" ui-toggle-class=""><i
													class="fa fa-times text-danger text"></i></a></td>
										</tr>

									</tbody>
								</c:forEach>
							</table>
							
						</div>
						<footer class="panel-footer">
							<div class="row">
                             
								<div class="col-sm-5 text-center">
										<!-- <small class="text-muted inline m-t-sm m-b-sm">showing
											20-30 of 50 items</small> -->
									<%-- <tg:paging pagedListHolder="${pagedListHolder}"
			                         pagedLink="${pagedLink}" /> --%>	
								</div>
								<div class="col-sm-7 text-right text-center-xs">
									<!-- <ul class="pagination pagination-sm m-t-none m-b-none">
										<li><a href=""><i class="fa fa-chevron-left"></i></a></li>
										<li><a href="">1</a></li>
										<li><a href="">2</a></li>
										<li><a href="">3</a></li>
										<li><a href="">4</a></li>
										<li><a href=""><i class="fa fa-chevron-right"></i></a></li>
									</ul> -->
									<!--code taglib  -->
									<jsp:useBean id="pagedListHolder" scope="request"
										type="org.springframework.beans.support.PagedListHolder" />
									<c:url value="/sanpham-list" var="pagedLink">
										<c:param name="p" value="~" />
									</c:url>

									<tg:paging pagedListHolder="${pagedListHolder}"
										pagedLink="${pagedLink}" />
								</div>
							</div>
						</footer>
					</div>
				</div>
			</section>
			<jsp:include page="footer.jsp" />
		</section>



	</section>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.slimscroll.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.scrollTo.js"></script>
</body>
</html>