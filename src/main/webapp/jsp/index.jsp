<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.wuyufei.domain.HotNews"%>
<%@page import="com.wuyufei.domain.Bussiness" %>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<%
	ArrayList<HotNews> list= (ArrayList<HotNews>)request.getAttribute("url");
	List<Bussiness> bl = (List<Bussiness>)request.getAttribute("bs");
	System.out.println(list.get(0).getUrl());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>爱食堂</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/shop.js"></script>
<link rel="stylesheet" type="text/css" href="css/cartStyle.css">
<link href="css/checkoutbts.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/checkout.css" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/slides.min.jquery.js"></script>
<script>
	$(function() {
		$('#slides').slides({
			preload : true,
			preloadimage : 'images/index/loading.gif',
			play : 5000,
			pause : 2500,
			hoverPause : true
		});
	});
</script>
<link rel="stylesheet" type="text/css" href="css/global.css">
</head>
<body>
	<div class="user-desc">
		<div class="container">
			<ul>
				<%
					String str = (String)session.getAttribute("username");
				%>
				<%
					if(str == "Login"){
				%>
				<li><a href="jsp/Login.jsp"><%=str%></a></li>
				<%} %>
				<%if(str != "Login"){ %>
				<li><a href="jsp/Welcome.jsp"><%=str%></a></li>
				<%} %>
				<li><a href="jsp/Reg.jsp">Register</a></li>
				<li><a href="checkout.html">Checkout</a></li>
				<li><i class="cart"></i><a href="../cart.html">Cart </a></li>
				<%if(str != "Login"){out.println("<li><a href=\"jsp/logout.jsp\">Logout</a></li>");} %>
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
						<li><a href="#" data-hover="HOME">HOME</a></li>
						<li class="nav_menu-item"><a href="#" data-hover="CONTACT">CONTACT</a>
							<ul class="nav_submenu">
								<li class="nav_submenu-item">wu</li>
								<li class="nav_submenu-item">1111111</li>
								<li class="nav_submenu-item">feng</li>
								<li class="nav_submenu-item">1111111</li>
								<li class="nav_submenu-item">huang</li>
								<li class="nav_submenu-item">1111111</li>
							</ul></li>
						<li>
							<div class="search-box">
								<form action="#">
									<input type="text"> <input type="submit" value="">
								</form>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div id=bg>
		<div class="content">
			<div id="example">
				<div id="slides">
					<div class="slides_container">
						<a href="" title="123" target="_blank"><img
							src=<%=list.get(0).getUrl()%> width="1000" height="340"
							alt="Slide 1"> </a> <a href="#" title="123" target="_blank"><img
							src=<%=list.get(1).getUrl()%> width="1000" height="340"
							alt="Slide 2"> </a> <a href="" title="123" target="_blank"><img
							src=<%=list.get(2).getUrl()%> width="1000" height="340"
							alt="Slide 3"> </a> <a href="" title="123" target="_blank"><img
							src=<%=list.get(3).getUrl()%> width="1000" height="340"
							alt="Slide 4"> </a>
					</div>
				</div>

			</div>


			<div class="clearFloat"></div>
			<div class="part">
				<h2>
					名店推介 <a href="">more &raquo;</a>
				</h2>
				<div class="grid" onclick="location.href='buy.html'">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h5>
							<a href="">name</a>
						</h5>
						<h3>fare / area</h3>
						<h3>time</h3>

					</div>
				</div>
				<div class="clearFloat"></div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店主</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店主</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店主</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店主</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店主</a>
						</div>
					</div>
				</div>
				<div class="clearFloat"></div>
				<h2>
					周边名店 <a href="">more &raquo;</a>
				</h2>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="clearFloat"></div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="">点击进入本店</a>
						</h3>
						<div class="category">
							<span class="icon"></span> <a href="#">联系店家</a>
						</div>
					</div>
				</div>
				<div class="clearFloat"></div>
			</div>

			<div class="clearFloat"></div>
			<footer>
			<div class="about">
				<div class="title">About Us</div>

			</div>

			<div class="clearFloat"></div>

			</footer>
		</div>
	</div>
	<div class="clearFloat"></div>
</body>
</html>