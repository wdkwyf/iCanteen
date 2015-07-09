<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<s:head />
<title>爱食堂reg</title>
<link href="<s:url value="../css/style_re.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<s:div class="main">
		<s:div class="re-form">
			<h1>Member Register</h1>
			<div class="head">
				<img src="../images/user.png" alt="" />
			</div>
			<s:div id="error_password">
				<s:actionerror />
			</s:div>
			<s:div id="form">
				<s:form action="reg.action">
					<s:textfield name="email" label="email" size="20" />
					<s:textfield name="username" label="username"></s:textfield>
					<s:password name="password" label="password" maxlength="15"></s:password>
					<s:password name="confirmPassword" label="confirmPassword"
						maxlength="15"></s:password>
					<s:textfield name="telephone" label="telephone"></s:textfield>
					<s:submit method="addCustomer" 
						align="center" />
				</s:form>
			</s:div>
		</s:div>
	</s:div>
</body>
</html>