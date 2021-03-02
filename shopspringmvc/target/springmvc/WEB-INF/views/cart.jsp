
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | E-Shopper</title>
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
</head>
<body>
 
  <jsp:include page="header.jsp"/>
 
  <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath }/">Trang Chủ</a></li>
				  <li class="active">Giỏ Hàng</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Sản Phẩm</td>
							<td class="description">Mô tả</td>
							<td class="price">Đơn Giá</td>
							<td class="quantity">Số Lượng</td>
							<td class="total">Thành Tiền</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
					
			           <c:forEach var="item" items="${Cart}">
						<tr>
							<td class="cart_product">
								<a href=""><img style="width: 200px;height: auto;" src="${pageContext.request.contextPath }/resources/images/sanpham/${item.value.sanPham.hinhanh}" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href="">${item.value.sanPham.tensanpham}</a></h4>
								<p>Mã Sản Phẩm: ${item.value.sanPham.masanpham}</p>
							</td>
							<td class="cart_price">
								<p><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${item.value.totalPrice}" />VNĐ</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href="<c:url value="EditCart/1/3"/>"> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="${item.value.quantity}" autocomplete="off" size="2">
									<a class="cart_quantity_down" href="<c:url value="EditCart/1/3"/>"> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${TotalPriceCart}" />VNĐ</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="<c:url value="DeleteCart/${item.key}" />"><i class="fa fa-times"></i></a>
							</td>
						</tr>
                    </c:forEach>
		                <tr>
		                   <td class="cart_total">
								<p class="cart_total_price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${TotalPriceCart}" />VNĐ</p>
							</td>
		                </tr>
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Cart Sub Total <span>$59</span></li>
							<li>Eco Tax <span>$2</span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>$61</span></li>
						</ul>
							<a class="btn btn-default update" href="">Update</a>
							<a class="btn btn-default check_out" href="${pageContext.request.contextPath }/checkout">Check Out</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
  <jsp:include page="footer.jsp"/> 

</body>
</html>