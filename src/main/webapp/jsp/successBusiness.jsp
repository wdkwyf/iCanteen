<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>success business</title>
<link rel="stylesheet" href="../css/successbusiness.css">
<link rel="stylesheet" href="../css/checkoutbts.css">
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
				<li><a href="salesSet.jsp"><%=str%></a></li>
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
<div id="success">

<h2>Set business successfully!
<br>
<br>
     Do you want to set your dishes futhermore?</h2>
   

     <a href="salesSet.jsp">DishesSet &raquo;</a>

</div>

</body>
</html>