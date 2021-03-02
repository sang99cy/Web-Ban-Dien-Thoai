
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
			<h2>DANH MỤC</h2>
			<div class="panel-group category-products" id="accordian">
				<!--category-productsr-->
               <c:forEach items="${listDMCHA}" var="listDMCHA">
				<div class="panel panel-default">
					<div class="panel-heading">
						
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordian"
								href="#sportswear"> <span class="badge pull-right"><i
									class="fa fa-plus"></i></span>${listDMCHA.getTendanhmuc()}
							</a>
						</h4>
					</div>
                        
						<div class="panel-body">
							<ul>
							  
								<li><a href="">${listDMCHA.getTendanhmuc()}</a></li>
							   
							</ul>
						</div> 
					

				</div>
	            </c:forEach>

			</div>
		</div>
	</div>
	<!--/category-products-->



</body>
</html>