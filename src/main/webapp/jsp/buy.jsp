<%@page import="com.wuyufei.dao.business_DAO"%>
<%@page import="com.wuyufei.dao.Buy_DAO"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<%@page import="com.wuyufei.domain.Sales"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	ArrayList<Sales> si = (ArrayList<Sales>) request
			.getAttribute("saleinfo");
	String username = (String) request.getAttribute("username");
	session.setAttribute("shopname", username);
	Bussiness bussiness = new business_DAO()
			.getBussinessByUsername(username);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/shop.js"></script>
<link rel="stylesheet" type="text/css" href="css/cartStyle.css">
<link href="css/checkoutbts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/checkout.css" rel="stylesheet" type="text/css"
	media="all" />

<title>Insert title here</title>
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
				<li><a href="jsp/Reg.jsp">Register</a></li>
				<li><a href="jsp/checkout.jsp">Checkout</a></li>
				<li><i class="cart"></i><a href="jsp/cart.jsp">Cart </a></li>
				<%
					if (str != "Login"){ 
				%>
				<li><a href="jsp/logout.jsp">Logout</a></li>
				<%} %>

			</ul>
		</div>
	</div>
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="#"><img src="images/index/foodLogo.png" alt="" /></a>
				</div>
				<div class="top-menu">
					<ul class="cl-effect-15">
						<li><a href="doReady" data-hover="HOME">HOME</a></li>
		
					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<div id="cbg">

		<div class="product">

			<div id="shop_info">
				<img src="images/index/food.png" alt="#">
				<h3><%=username%></h3>
				<div class="sinfo">
					<ul class="aft">

						<li>Area: <%=bussiness.getArea()%></li>
						<li>Time: <%=bussiness.getTime()%> mins
						</li>
					</ul>
					<ul class="aft">
						<li>Shipping fare : €<%=bussiness.getFare()%></li>
					</ul>

				</div>


			</div>
			<div id="menu_all">
				<br />
				<%
					for (int i = 0; i < si.size(); i++) {
						Sales siItem = si.get(i);
				%>
				<div class="each_item">
					<img src="images/index/food.png">
					<div class="product-description"
						data-name="<%=siItem.getDishname()%>"
						data-price="<%=siItem.getDishprice()%>">
						<h3 class="product-name"><%=siItem.getDishname()%></h3>
						<p class="product-price">
							€
							<%=siItem.getDishprice()%></p>
						<form class="add-to-cart" action="jsp/cart.jsp" method="post">
							<div>
								<label for="qty-1">Quantity</label> <input type="text"
									name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p>
								<input type="submit" value="add to cart" class="btn1" />
							</p>
						</form>
					</div>
				</div>



				<%
					}
				%>
			</div>
			<footer>
			<h3>
				<center>Copyright &copy; School of Software Engineering</center>
			</h3>
			</footer>
		</div>

	</div>

</body>
</html>