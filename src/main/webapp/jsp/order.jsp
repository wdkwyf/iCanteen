<%@page import="com.wuyufei.dao.business_DAO"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/shop.js"></script>
<link href="../css/checkoutbts.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="../css/cartStyle.css">
<link href="../css/checkout.css" rel="stylesheet" type="text/css"
	media="all" />
<%
	String shopname = (String) session.getAttribute("shopname");
%>
<%
	Bussiness ui = new business_DAO().getBussinessByUsername(shopname);
%>
<title>order</title>
</head>
<body id="checkout-page">
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
	<div id="site">

		<div id="content">
			<h1>Your Order</h1>
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
			<div id="pricing">
				<p id="shipping">
					<strong>Shipping</strong>: <s><span id="sshipping"></span></s>&nbsp&nbsp&nbsp&#8594&nbsp&nbsp
					€
					<%=ui.getFare()%>
				</p>
				<p id="sub-total">
					<strong>Total</strong>: <span id="stotal"></span>
				</p>
			</div>
			<div id="user-details">
				<h2>Your Data</h2>
				<div id="user-details-content"></div>
			</div>
			<script type="text/javascript">
				function cancel() {
					document.getElementById("field2").value = document
							.getElementById("field1").value;
				}
				function message() {
					alert("Your order has already send to the business,please wait a moment!\nNext will lead you to the homepage...");
				}
			</script>
			<s:form id="json-form" action="json">
				<s:hidden name="json_product" id="product"></s:hidden>
				<s:hidden name="json_custT" id="custT"></s:hidden>
				<s:hidden name="json_custA" id="custA"></s:hidden>
				<input type="submit" class="btn" value="Confirm" onclick="message()" />
				<a href="../cart.html"> <input type="button" class="btn"
					id="cancel-btn" value="Cancel" />
				</a>
			</s:form>


		</div>
	</div>
</body>
</html>
