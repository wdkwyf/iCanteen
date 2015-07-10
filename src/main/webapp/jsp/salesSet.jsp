<%@page import="com.wuyufei.dao.Sales_DAO"%>
<%@page import="java.util.List"%>
<%@page import="com.wuyufei.domain.Sales"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.wuyufei.dao.business_DAO"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../js/jquery-2.1.4.js"></script>
<script src="../js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>edit for business</title>
<link href="../css/salesIn.css" rel='stylesheet' type='text/css' />
<title>SalesinfoSet</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }








</script>
<script type="text/javascript" src="../js/salesInfo.js"></script>

<%
	String username = (String) session.getAttribute("username");
	Bussiness business = new business_DAO()
			.getBussinessByUsername(username);
	List<Sales> salesList = null;
	salesList = new Sales_DAO()
			.getSalesByUsername(username);
%>

</head>
<body>
	<div class="main">

		<div id="taitou">
			<h3>Set Sales information</h3>
		</div>
		<div id="cur_user">

			<p>
				<span>Dear Mr./Ms. </span><%=username%>
			</p>
		</div>
		<%
			if (business == null) {
		%>
		<div class="login-form">
			<h1>Business Set</h1>

			<s:form action="businessSet">
				<input type="area" name="area" onclick="getValue()"
					placeholder="area"
					onblur="if(/[^0-9a-zA-Z_\.]/g.test(value))alert('Dish Name Input Error, Check Your Dish Name')">&nbsp;&nbsp;&nbsp;
				<input type="period" name="time"
					onkeyup="value=value.replace(/[^\d\.]/g,'')" placeholder="period">&nbsp mins &nbsp
				<input type="fare" name="fare"
					onkeyup="value=value.replace(/[^\d\.]/g,'')" placeholder="fare">&nbsp$
					<input type="submit" value="Submit">
			</s:form>
		</div>
		<%
			} else {
		%>
		<div class="login-form">
			<h1>Business Set</h1>

			<s:form action="businessSet">
				<input type="area" name="area" onclick="getValue()"
					placeholder="area" value="<%=business.getArea()%>"
					onblur="if(/[^0-9a-zA-Z_\.]/g.test(value))alert('Dish Name Input Error, Check Your Dish Name')">&nbsp;&nbsp;&nbsp;
				<input type="fare" name="time"
					onkeyup="value=value.replace(/[^\d\.]/g,'')" placeholder="period"
					value="<%=business.getTime()%>">&nbsp mins &nbsp
	
				<input type=period class="fare" name="fare"
					onkeyup="value=value.replace(/[^\d\.]/g,'')" placeholder="fare"
					value="<%=business.getFare()%>">&nbsp$
					<div class="submit">
					<input type="submit" value="Submit">
				</div>
				<br>
				<br>
				<s:actionerror cssStyle="color:red;position:relative;left:28%" />
			</s:form>
		</div>
		<%
			}
		%>

		<div class="login-form">
			<h1>Existing Dishes</h1>



			<%  if(salesList != null)
				for (int i = 0; i < salesList.size(); i++) {
			%>
			<s:form action="deleteSales">
				<input type="text" name="dishName" class="text" placeholder="Dish"
					onclick="getValue()" value="<%=salesList.get(i).getDishname()%>"
					onblur="if(/[^0-9a-zA-Z_\.]/g.test(value))alert('Dish Name Input Error, Check Your Dish Name')">
			&nbsp&nbsp <input type="text" class="text" placeholder="Price"
					value="<%=salesList.get(i).getDishprice()%>"
					onkeyup="value=value.replace(/[^\d\.]/g,'')">
				<input type="submit" value="Delete">
			</s:form>

			<%
				}
			%>

			<h1>New Dishes</h1>
			<s:form action="addSales">

				<div class="submit">
					<input type="text" name="dishName" class="text" placeholder="Dish"
						onclick="getValue()"
						onblur="if(/[^0-9a-zA-Z_\.]/g.test(value))alert('Dish Name Input Error, Check Your Dish Name')">
					&nbsp&nbsp <input type="text" name="dishPrice" class="text"
						placeholder="Price" onkeyup="value=value.replace(/[^\d\.]/g,'')">
					<input type="submit" value="Add new dishes">
				</div>
			</s:form>
		</div>
	</div>
</body>
</html>