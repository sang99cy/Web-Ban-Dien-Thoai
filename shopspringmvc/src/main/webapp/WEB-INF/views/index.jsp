<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | E-Shopper</title>
    
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/all.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/fonts/fontawesome-webfont.woff" rel="stylesheet">
</head>
<body>
   <jsp:include page="header.jsp"/>
   <jsp:include page="slider.jsp"/>
   <section>
		<div class="container">
			<div class="row">
			     <jsp:include page="category.jsp"/>
                 <jsp:include page="product.jsp"/>
                 <div style="margin-left: 230px">
                     <!--code taglib  -->
									<jsp:useBean id="pagedListHolder" scope="request"
										type="org.springframework.beans.support.PagedListHolder" />
									<c:url value="/" var="pagedLink">
										<c:param name="p" value="~" />
									</c:url>

									<tg:paging pagedListHolder="${pagedListHolder}"
										pagedLink="${pagedLink}" />
                 </div>
                
			</div>
		</div>
	</section>		
   <jsp:include page="footer.jsp"/> 
<!--script  -->
 <script src="${pageContext.request.contextPath }/resources/frontend/js/Custom.js"></script>
 <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>