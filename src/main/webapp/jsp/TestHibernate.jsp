
<%@page import="com.wuyufei.domain.HotNews"%>
<%@page import="java.util.ArrayList"%>
<%
	String username = (String) request.getAttribute("name");
	String psd = (String) request.getAttribute("psd");
	ArrayList<HotNews> list= (ArrayList<HotNews>)request.getAttribute("url");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
	Welcome!
	<%=username%>
	<%=psd%>
	<br />
	<img alt="image" src=<%=list.get(1).getUrl()%>>
</body>
</html>