
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
<%-- <script src="${pageContext.request.contextPath }/resources/frontend/js/jquery2.0.3.min.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery-3.2.1.min.js"></script> 
<script src="${pageContext.request.contextPath }/resources/frontend/js/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/frontend/js/morris.js"></script>
<style type="text/css">
#img{
   width: 120px;
   height: 100px;
}
.th{
  width: 30px;
  font-style:italic;
  font-family: sans-serif;
  color: blue;
  text-align: center;
}
.capnhatsanpham{
  width: 70px;
  height: auto;
  border-radius: 3px;
  margin-right: 20px
}
.td{
   text-align: center;
}

</style>
</head>
<body>
    
	<section id="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section id="main-content">
			<section class="wrapper">
			    <div class="form-w3layouts">
					<section class="panel">
						<header class="panel-heading"> Cập nhật sản phẩm </header>
						<div class="panel-body">
							<div class="position-center">
							<!--  -->
							<c:url value="/themsanpham" var="themsanpham"></c:url>
								<form id="form-sanpham" role="form" action="<%-- ${themsanpham} --%>"
									method="POST" enctype="multipart/form-data" <%-- modelAttribute="sanpham" --%>>
									<div class="form-group">
										<label for="exampleInputEmail1">Mã sản phẩm</label> <input
											type="hidden" name="masanpham" class="form-control"
											id="exampleInputEmail1">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Danh mục</label> 
											<select name="danhMuc" id="danhMuc" class="form-control">
											<c:forEach var="listDM" items="${listDM}"> 
											   <option value="${listDM.getMadanhmuc()}">${listDM.getTendanhmuc()}</option>
											</c:forEach>    
											</select>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Tên sản phẩm</label> <input
											type="text" name="tensanpham" id="tensanpham" class="form-control"
											value=""/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Avatar</label> <input
											type="file" id="hinhanh" name="hinhanh" class="form-control"
											value=""/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Số lượng</label>
											<input min="1" value="1" type="number" id="soluong" name="soluong"  class="form-control" placeholder="soluong"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Mô tả</label> <textarea
											style="resize: none" rows="8" name="mota" id="mota"  class="form-control"
											></textarea>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Đơn giá</label> <input
											 name="dongia" id="dongia" value="" class="form-control"/>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Giảm giá</label> <input
											 name="giamgia" id="giamgia" value="" class="form-control"/>
									</div>
									
									<button id="btnCapNhatSanPham" class="btn btn-info">Cập nhật sản phẩm</button>
								</form>
							</div>
                       
						</div>
					</section>
				</div>
			  <!--DS SAN PHAM  -->
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
						
							<table class="table table-bordred table-striped">
								<thead class="thead-dark">
									<tr>
										<th class="th" scope="col">Tên danh mục</th>
										<th class="th"  scope="col">Tên sản phẩm</th>
										<th class="th" scope="col">Hình ảnh</th>
										<th class="th" scope="col">Số lượng</th>
										<th class="th" scope="col">Mô tả</th>
										<th class="th" scope="col">Đơn giá</th>
										<th class="th" scope="col">Giảm giá</th>
										<th class="th" scope="col">Cập nhật</th>
										 <th class="th" scope="col">xóa</th>
										 <th style="width: 30px;"></th>
										<!-- <th class="th" scope="col">Xóa</th> -->
										
									</tr>
								</thead>
								<%-- <c:forEach items="${listSP}" var="sp"> --%>
								<c:forEach items="${pagedListHolder.pageList}" var="sp">
									<tbody>

										<tr>
					
											<td scope="row"><span class="text-ellipsis td">${sp.getDanhMuc().getTendanhmuc()}</span></td>
											<td scope="row"><span class="text-ellipsis td">${sp.getTensanpham()}</span></td>
											<td scope="row"><span class="text-ellipsis td"><img id="img" src="${pageContext.request.contextPath }/resources/images/sanpham/${sp.getHinhanh()}" alt=""></span></td>
											<td scope="row"><span class="text-ellipsis td">${sp.getSoluong()}</span></td>
											<td scope="row"><span class="text-ellipsis td">${sp.getMota()}</span></td>
											<td scope="row"><span class="text-ellipsis td">${sp.getDongia()}</span></td>
											<td scope="row"><span class="text-ellipsis td">${sp.getGiamgia()}</span></td>
											<td scope="row" class="btn btn-secondary capnhatsanpham td" data-id="${sp.getMasanpham()}"><span class="text-ellipsis"><li class="fa fa-pencil-square-o text-success text-active" style="font-size: 25px"></i></span></td>
											<%-- <td><a href="" class="btn capnhatsanpham" data-id="${sp.getMasanpham()}"><li class="fa fa-pencil-square-o text-success text-active"></i></a></td> --%>
											<%-- <td  scope="row"class="btn btn-primary xoasanpham " data-id="${sp.getMasanpham()}"><span class="text-ellipsis">delete</span></td> --%>
											
											<td><a href="${pageContext.request.contextPath }/sanpham-delete/${sp.getMasanpham()}" class="active" ui-toggle-class=""><i
													class="fa fa-trash-o text-danger text" style="font-size: 25px"></i></a></td>
													
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
	<script src="${pageContext.request.contextPath }/resources/frontend/js/Custom.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.slimscroll.js"></script>
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath }/resources/frontend/js/jquery.scrollTo.js"></script>
</body>
</html>