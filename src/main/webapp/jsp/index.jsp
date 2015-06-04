<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.wuyufei.domain.HotNews"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<HotNews> list= (ArrayList<HotNews>)request.getAttribute("url");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>爱食堂</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

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
			<li><a href="jsp/Login.jsp">Login</a></li>			
		    <li><a href="jsp/Reg.jsp">Register</a></li>
			<li><a href="checkout.html">Checkout</a></li>
			<li><i class="user"></i><a href="#">My Account</a></li>
			<li><i class="cart"></i><a href="../cart.html">Cart </a></li>
			</ul>
		</div>
</div>

	<div class="wrap">
		<div class="sidebar">
			<header>
			<div class="logo">
				<a href="index.html" title="Mad"> </a>
			</div>
			<div class="clearFloat"></div>
			<div class="search-box">
				<form action="#">
					<input type="text"> <input type="submit" value="">
				</form>
			</div>
			<div class="clearFloat"></div>
			</header>
			<div class="widget">
				<h1>推荐菜单</h1>
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="active"><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">10</a></li>
				</ul>
				<h2>今日最热</h2>
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">10</a></li>

				</ul>
			</div>
			<div class="clearFloat"></div>
		</div>
		<!--cut off-->
		<div class="content">
			<div>顶部菜单栏</div>
			<div id="example">
				<div id="slides">
					<div class="slides_container">
						<a href="" title="123" target="_blank"><img
							src=<%=list.get(0).getUrl()%> width="570" height="270"
							alt="Slide 1"> </a> <a href="#" title="123" target="_blank"><img
							src=<%=list.get(1).getUrl()%> width="570" height="270"
							alt="Slide 2"> </a> <a href="" title="123" target="_blank"><img
							src=<%=list.get(2).getUrl()%> width="570" height="270"
							alt="Slide 3"> </a> <a href="" title="123" target="_blank"><img
							src=<%=list.get(3).getUrl()%> width="570" height="270"
							alt="Slide 4">
						</a>
					</div>
					<a href="#" class="prev"><img src="images/index/arrow-prev.png"
						width="24" height="43" alt="Arrow Prev"></a> <a href="#"
						class="next"><img src="images/index/arrow-next.png" width="24"
						height="43" alt="Arrow Next"></a>
				</div>
				<img src="images/index/example-frame.png" width="739" height="341"
					alt="Example Frame" id="frame">
			</div>
			

			<div class="clearFloat"></div>
			<div class="part">
				<h2>
					名店推介 <a href="">more &raquo;</a>
				</h2>
				<div class="grid">
					<div class="preview">
						<a href="" title=""><img src="images/index/food.png" alt="#"></a>

					</div>
					<div class="data">
						<h3>
							<a href="buy.html">点击进入本店</a>
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
		<div class="clearFloat"></div>
	</div>
</body>
</html>
