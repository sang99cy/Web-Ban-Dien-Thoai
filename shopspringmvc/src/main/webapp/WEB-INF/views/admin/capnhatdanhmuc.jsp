<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/frontend/css/bootstrap.min.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath }/resources/frontend/css/style.css" rel="stylesheet" type="text/css" />
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
			<div class="form-w3layouts">
			<section class="panel">
                        <header class="panel-heading">
                            Cập nhật danh mục sản phẩm
                        </header>
                       <div class="panel-body">
							<div class="position-center">
							<c:url value="/capnhatdanhmuc" var="capnhatdanhmuc"></c:url>
								  <form:form role="form" action="${capnhatdanhmuc}" method="POST" modelAttribute="danhmuc">
                                <div class="form-group">
                                   
                                 <form:input path="madanhmuc" cssClass="form-control" class="btn btn-info" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục</label>
                                    <form:input type="text" path="tendanhmuc"  class="form-control" id="exampleInputEmail1"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Danh mục cha</label>
                                    <form:input type="text" path="danhmuccha"  class="form-control" id="exampleInputEmail1"/>
                                </div>
                                <form:button class="btn btn-info">Cập nhật danh mục</form:button>
                                </form:form>
							</div>
                    
						</div>
                    </section>
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