<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<em>The form below uses Google's SMTP server. So you need to enter
		a gmail username and password </em>
	<s:form action="emailer.action">
		<label for="to">To</label>
		<br />
		<input type="text" name="to" />
		<br />
		<label for="subject">Subject</label>
		<br />
		<input type="text" name="subject" />
		<br />
		<label for="body">Body</label>
		<br />
		<input type="text" name="body" />
		<br />
		<input type="submit" value="Send Email" />
		</s:form>
</body>
</html>