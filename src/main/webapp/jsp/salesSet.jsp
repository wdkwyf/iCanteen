<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.wuyufei.dao.business_DAO"%>
<%@page import="com.wuyufei.domain.Bussiness"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>edit for business</title>
<link href="../css/salesIn.css" rel='stylesheet' type='text/css' />
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }


</script>
<script type="text/javascript" src="../js/salesInfo.js"></script>

<%
	String username = (String) session.getAttribute("username");
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
		<div class="login-form">
			<h1>Add dishes and price</h1>

			<form id="kk" name="kk">
				<input type="text" id="aa" class="text" placeholder="Dish"
					onclick="getValue()"
					onblur="if(/[^0-9a-zA-Z_\.]/g.test(value))alert('Dish Name Input Error, Check Your Dish Name')">
				<input type="text" class="text" id="bb" placeholder="Price"
					onkeyup="value=value.replace(/[^\d\.]/g,'')">
				<table id="tab" width=142%></table>

				<div class="submit">
					<input type="button" onclick="addText()" value="Add"> <input
						type="button" onclick="removeText()" value="cut"> <input
						type="submit" onclick="myFunction()" value="Confirm">
				</div>
			</form>
		</div>
	</div>
</body>
</html>