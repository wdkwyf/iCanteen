<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/admin.css">
<link rel="stylesheet" href="../css/checkoutbts.css">
<title>Admin Dashboard</title>
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
				<li><a href="admin.jsp"><%=str%></a></li>
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
<div id="content">
    <div id="hi-admin">
    	<ul>
	    	<li>
			<%
				String adminName = (String)session.getAttribute("username");
			%>
			<p><%=adminName %></p>
		    </li>
	    </ul>
    </div>
	<div id="delete-sales">
	<h2>Please input the index of saler which need to be deleted</h2>
	  <s:form action="delete">
		  <input type="text" placeholder="UserInfo" name="delUserName"></input>
		
		  <input type="submit" class="btn" value="Delete"></input>
	  </s:form>
	  <s:actionerror cssStyle="color:red;position:relative;left:18%" />
	 			
	</div>
</div>
	
</body>
</html>