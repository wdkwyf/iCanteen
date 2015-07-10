<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.wuyufei.domain.HotNews"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<%
	ArrayList<HotNews> list= (ArrayList<HotNews>)request.getAttribute("url");
	ArrayList<Bussiness> bl = (ArrayList<Bussiness>)request.getAttribute("bs");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>iCanteen</title>
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
	function myFunction(id) {
		var bid = id;

		alert(bid);
	}
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
					String str = (String) session.getAttribute("username");
							System.out.println("username is : "+str);
				%>
				<%
					if (str == "Login") {
								System.out.println("str is login");
				%>
				<li><a href="jsp/Login.jsp"><%=str%></a></li>
				<%
					}
				%>
				<%
					if (str != "Login") {
								if(str.equals("admin")) {
				%>
				<li><a href="jsp/admin.jsp"><%=str%></a></li>
				<%
					}else {
				%>
				<li><a href="jsp/salesSet.jsp"><%=str%></a></li>
				<%
					}
							}
				%>
				<li><a href="jsp/Reg.jsp">Register</a></li>
				<li><a href="jsp/checkout.jsp">Checkout</a></li>
				<li><i class="cart"></i><a href="jsp/cart.jsp">Cart </a></li>
				<%
					if (str != "Login"){
				%>
				<li><a href="jsp/logout.jsp">Logout</a></li>
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
					<a href="#"><img src="images/index/foodLogo.png" alt="" /></a>
				</div>
				<div class="top-menu">
					<ul class="cl-effect-15">
						<li><a href="doReady" data-hover="HOME">HOME</a></li>
						<li class="nav_menu-item"><a href="#" data-hover="CONTACT">CONTACT</a>
							<ul class="nav_submenu">
								<li class="nav_submenu-item">Wu Yufei</li>
								<li class="nav_submenu-item">Feng Xinhe</li>
								<li class="nav_submenu-item">Huang Shuaiyi</li>
							</ul></li>
						<li>
							<div class="search-box">
								<s:form action="buy">
									<input type="text" name="bid">
									<input type="submit" value="">
								</s:form>
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
				<h2>&nbsp&nbspTop 5:</h2>
				<%
					int len = 6;
															for (int i = 0; i < len; i++) {
															Bussiness bi = bl.get(i);  //need to get	
															String s = bi.getUsername();
															if(s.equals("admin")) continue;
				%>
				<div class="grid" id="shops">
					<div class="preview">
						<a href="" title=""><img src="images/users/user_<%=i %>.png" alt="#"></a>
					</div>
					<div class="data">
						<h5>
							<div id="shopname"><%=s%></div>
						</h5>
						<h3><%=bi.getArea()%>
							/ $<%=bi.getFare()%></h3>
						<h3>
							Time:
							<%=bi.getTime()%>
							mins
						</h3>
					</div>
					<s:form action="buy">
						<s:hidden name="bid" id="ShopName"></s:hidden>
						<input type="submit" class="btn" value="Go into"></input>
					</s:form>
				</div>
				<%
					}
				%>
				<div class="clearFloat"></div>

				<h2>&nbsp&nbspAll Business:</h2>
				<%
					int len2 = 7;
															for (int i = 0; i < len2; i++) {
															Bussiness bi = bl.get(i);
															String s = bi.getUsername();
															if(s.equals("admin")) continue;
				%>
				<div class="grid" id="shops">
					<div class="preview">
						<a href="" title=""><img src="images/users/user<%=i%>.png"
							alt="#"></a>
					</div>
					<div class="data">
						<h5>
							<div id="shopname"><%=s%></div>
						</h5>
						<h3><%=bi.getArea()%>
							/ $<%=bi.getFare()%></h3>
						<h3>
							Time:
							<%=bi.getTime()%>
							mins
						</h3>
					</div>
					<s:form action="buy">
						<s:hidden name="bid" id="ShopName"></s:hidden>
						<input type="submit" class="btn" value="Go into"></input>
					</s:form>
				</div>
				<%
					}
				%>


				<div class="clearFloat"></div>
			</div>
			<footer>
			<h3>
				<center>Copyright &copy; School of Software Engineering</center>
			</h3>
			</footer>
			<div class="clearFloat"></div>

		</div>
	</div>
	<div class="clearFloat"></div>
	<script type="text/javascript">
		$("#shops").each(function() {
			var len = 7;
			/* for(var i=0;i<len;i++ ) {
				var name = "shopname"+i;
				console.log(document.getElementById(name).innerHTML);
				var temp = document.getElementById("ShopName");
				temp.value = document.getElementById(name).innerHTML;
				temp.id = "complete";
				
			} */
			while (document.getElementById("shopname")) {
				console.log(document.getElementById("shopname").innerHTML);
				var temp = document.getElementById("ShopName");
				var getSName = document.getElementById("shopname");
				temp.value = getSName.innerHTML;
				temp.id = "complete";
				getSName.id = "alsocomplete";

			}
		});
	</script>
</body>
</html>