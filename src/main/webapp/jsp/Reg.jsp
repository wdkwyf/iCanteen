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
					<s:textfield name="email" key="email" size="20" />
					<s:textfield name="username" key="username"></s:textfield>
					<s:password name="password" key="password" maxlength="15"></s:password>
					<s:password name="confirmPassword" key="confirmPassword"
						maxlength="15"></s:password>
					<s:textfield name="telephone" key="telephone"></s:textfield>
					<s:submit method="addCustomer" key="label.add.customer"
						align="center" />
				</s:form>
			</s:div>
		</s:div>
	</s:div>
</body>
</html>