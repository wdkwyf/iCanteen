<%@page import="com.wuyufei.dao.business_DAO"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<%@page import="com.wuyufei.dao.User_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>checkout</title>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/shop.js"></script>
<link href="../css/checkoutbts.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="../css/cartStyle.css">
<link href="../css/checkout.css" rel="stylesheet" type="text/css"
	media="all" />
<title>Insert title here</title>
<%
	String shopname = (String) session.getAttribute("shopname");
%>
<%
	Bussiness ui = null;
	ui = new business_DAO().getBussinessByUsername(shopname);
%>
</head>
<body>
	<div class="user-desc">
		<div class="container">
			<ul>
				<%
					String str = (String) session.getAttribute("username");
				%>
				<%
					if (str == "Login") {
				%>
				<li><a href="jsp/Login.jsp"><%=str%></a></li>
				<%
					}
				%>
				<%
					if (str != "Login") {
				%>
				<li><a href="jsp/Welcome.jsp"><%=str%></a></li>
				<%
					}
				%>
				<li><a href="Reg.jsp">Register</a></li>
				<li><a href="checkout.jsp">Checkout</a></li>
				<li><i class="cart"></i><a href="cart.jsp">Cart </a></li>
				<%
					if (str != "Login") {
				%>
				<li><a href="logout.jsp">Logout</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="#"><img src="../images/index/foodLogo.png" alt="" /></a>
					<!-- logo 的图片 -->
				</div>
				<div class="top-menu">
					<span class="menu"> </span>
					<ul class="cl-effect-15">
						<li><a href="../doReady" data-hover="HOME">HOME</a></li>
					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="My-wish-section">
			<section id="wish">
			<div class="my-wish-content">

				<div class="coats sing-c">
					<h3 class="c-head">Your Bascket</h3>
					<table id="checkout-cart" class="shopping-cart">
						<thead>
							<tr>
								<th scope="col">Item</th>
								<th scope="col">Qty</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>

			</div>
			<div id="pricing">
				<p id="shipping">
				<%if(ui != null) {%>
					<strong>Shipping</strong>:&nbsp&nbsp&nbsp&nbsp€<%=ui.getFare()%><%} %>
				</p>

				<p id="sub-total">
					<strong>Total</strong>: <span id="stotal"></span>
				</p>
			</div>
			</section>
		</div>
	</div>

	<div class="content-section">
		<div class="container">



			<div class="col-md-3 about-us">
				<form action="order.jsp" method="post" id="checkout-order-form">
					<h2>Your Details</h2>
					<fieldset id="fieldset-billing">
						<legend>Shipping</legend>
						<!-- Name, Email, City, Address, ZIP Code, Country (select box) -->

						<div>
							<label for="telephone">Telephone</label> <input type="text"
								name="telephone" id="telephone" data-type="expression"
								data-message="Not a valid telephone" />
						</div>

						<div>
							<label for="address">Address</label> <input type="text"
								name="address" id="address" data-type="string"
								data-message="This field may not be empty" />
						</div>

					</fieldset>

					<div id="same-as-billing"></div>
					<p>
						<input type="submit" id="submit-order" value="Submit" class="btn" />
					</p>

				</form>
			</div>

		</div>
	</div>
</body>
</html>