<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script src="js/jquery-2.1.4.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/checkCity.js"></script>
<link rel="stylesheet" type="text/css" href="css/navigation.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<style type="text/css">
body {
	background-image: url(images/bg_navigation.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
<title>爱食堂</title>
</head>
<body>
<div id="wrap">
<div id="top">iCanteen</div>
<div id="content">

<div class="form">
	<s:form action="doReady" class="search_form">
		
			<select class="form-control input-lg" id="province">
				<option selected="selected">上海市</option>
			</select>
		
		    <select class="form-control input-lg" id="province2"
				onchange="if(this.value != '') setCity(this.options[this.selectedIndex].value);">
				<option value="">-请选择-</option>
				<option value="嘉定区">嘉定区</option>
				<option value="杨浦区">杨浦区</option>
			</select>

			<select class="form-control input-lg" id="city">
			<option value=""></option>
			</select>
	
		   <input class="btn btn-lg" type="submit" value="Go!" id="button">
	</s:form>
</div>
</div>
</div>
</body>
</html>