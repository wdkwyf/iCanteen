<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>cart</title>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/shop.js"></script>
<link rel="stylesheet" type="text/css" href="../css/cartStyle.css">
<link href="../css/checkoutbts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="../css/checkout.css" rel="stylesheet" type="text/css"
	media="all" />
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
				<li><a href="Login.jsp"><%=str%></a></li>
				<%
					}
				%>
				<%
					if (str != "Login") {
				%>
				<li><a href="Welcome.jsp"><%=str%></a></li>
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
					<form action="cart.jsp" id="shopping-cart" method="post">
						<table class="shopping-cart">
							<thead>
								<tr>
									<th scope="col">Item</th>
									<th scope="col">Qty</th>
									<th scope="col">Price</th>
								</tr>
							</thead>
							<tbody></tbody>
						</table>
				</div>

			</div>
			<h4 id="sub-total">
				<strong>Sub Total</strong>:<span id="stotal"></span>
			</h4>
			</section>
		</div>
	</div>

	<div class="content-section">
		<div class="container">

			<div class="col-md-3 about-us">
				<ul id="shopping-cart-actions">
					<li><input type="submit" name="delete" id="empty-cart"
						class="btn" value="Empty Cart" /></li>
					<li><input type="button" name="button"
						value="Continue Shopping" onclick="location.href=history.back()"
						style="display: inline"></li>
					<li><input type="button" name="button" value="Go To Checkout"
						onclick="location.href='checkout.jsp'" style="display: inline">
					</li>
				</ul>
				</form>
			</div>

		</div>
	</div>

</body>
</html>