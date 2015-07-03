<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/cartStyle.css" media="screen"
	type="text/css" />
<script type="text/javascript" src="../js/shop.js"></script>
<title>order</title>
</head>
<body id="checkout-page">
<body id="checkout-page">
	<div id="site">

		<div id="content">
			<h1>Your Order</h1>
			<table id="checkout-cart" class="shopping-cart">
				<thead>
					<tr>
						<th scope="col">Item</th>
						<th scope="col">Qty</th>
						<th scope="col">Price</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<div id="pricing">
				<p id="shipping">
					<strong>Shipping</strong>: <span id="sshipping"></span>
				</p>
				<p id="sub-total">
					<strong>Total</strong>: <span id="stotal"></span>
				</p>
			</div>
			<div id="user-details">
				<h2>Your Data</h2>
				<div id="user-details-content"></div>
			</div>
			<script type="text/javascript">
				function cancel() {
					document.getElementById("field2").value = document
							.getElementById("field1").value;
				}
			</script>
			<s:form id="json-form" action="json">
				<s:hidden name="json_product" id="product"></s:hidden>
				<s:hidden name="json_custT" id="custT"></s:hidden>
				<s:hidden name="json_custA" id="custA"></s:hidden>
				<input type="submit" class="btn" value="Confirm" />
				<a href="../cart.html"> <input type="button" class="btn" id = "cancel-btn"
					value="Cancel" />
				</a>
			</s:form>


		</div>
	</div>
</body>
</html>
