
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.niit.java.DAO.danhmucDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.niit.java.DAO.danhmucDao"%>
<%@page import="com.niit.java.Service.danhmucService"%>
<%@page import="com.niit.java.Entity.DanhMuc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category page</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>

</head>
<body>

	<div class="col-sm-3">
		<div class="left-sidebar">
		<br>
			<h2>DANH MỤC</h2>
			<div class="panel-group category-products" id="accordian">
				<!--category-productsr-->
               <%
				  List<DanhMuc> listdmcha=(List<DanhMuc>)request.getAttribute("listdmcha");
				  
				 /*  for(DanhMuc dmcha : listdmcha){ */
				%>   
				<c:forEach var="dmcha" items="${listdmcha}">
				<div class="panel panel-default">
					<div class="panel-heading">
						
						<h4 class="panel-title">
							<!-- <a data-toggle="collapse" data-parent="#accordian" -->
								<a href="${pageContext.request.contextPath }/load-danhmuccon/${dmcha.getMadanhmuc()}"> <span class="badge pull-right"><i
									class="fa fa-plus"></i></span> ${dmcha.getTendanhmuc()}
							</a>
						</h4>
					</div>
                        <%-- <c:if test="${dmcha.getMadanhmuc() > 0}" var="item" >
						<div class="panel-body">
							<ul>
							    <c:forEach var="dmc" items="${danhmuccon}">
								<li><a href="">${dmc.getTendanhmuc()}</a></li>
								</c:forEach>
							</ul>
						</div> 
					    </c:if>  --%>

				</div>
				<%-- <%
				  };
				  %> --%>
                </c:forEach>
			</div>
			<div class="brands_products"><!--brands_products-->
							<h2>THƯƠNG HIỆU</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#"> <span class="pull-right">(50)</span>Nokia</a></li>
									<li><a href="#"> <span class="pull-right">(56)</span>Lenovo</a></li>
									<li><a href="#"> <span class="pull-right">(27)</span>Iphone</a></li>
									<li><a href="#"> <span class="pull-right">(27)</span>Dell</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Liên Hệ</h2>
							<div class="well text-center">
								<!--  <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b> -->
								 <div class="row">
								    
								 </div>
							</div>
						</div><!--/price-range-->
						
						
		</div>
</div>
	<!--/category-products-->

 


</body>
</html>