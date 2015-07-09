<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>爱食堂</title>
<meta charset="utf-8">
<link href="../css/style_login.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<style type="text/css">
input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0px 1000px #D3D3D3 inset;
	border: 1px solid #CCC !important;
}
</style>
</head>
<body>
	<div class="main">
		<div class="login-form">
			<h1>Member Login</h1>
			<div class="head">
				<img src="../images/user.png" alt="" />
			</div>

			<s:form action="login.action" method="post">
				<input type="text" class="text" name="username"
					placeholder="Input Your Username" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '';}">


				<input type="password" value="" name="password"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '';}">

				<br />
				<div class="submit">
					<input type="submit" onclick="myFunction()" value="Login">
				</div>
				<p>
					<a href="Reg.jsp">Register ?</a>
				</p>
			</s:form>
		</div>
	</div>




</body>
</html>