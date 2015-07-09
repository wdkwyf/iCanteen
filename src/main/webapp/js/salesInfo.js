var num = 1;// 行的初始id
var rowNum = 5;// 一次添加的个数
var dishName = new Array();
var dishPrice = new Array();

function $(elem) {
	return typeof elem == "string" ? document.getElementById(elem) : elem;
}
function getValue() {

	var y = document.getElementsByTagName("input");

	for (var i = 0; i <= (y.length - 3) / 2 - 1; i++) {
		dishName[i] = document.kk.aa[i].value;
		dishPrice[i] = document.kk.bb[i].value;

	}
	;

}

function addText() {
	var tab = $("tab");
	var row = tab.insertRow(-1);
	row.id = "row" + num;
	var cell1 = row.insertCell(-1);

//	cell1.innerHTML = "<INPUT type='text' name='dishName' class='text' id = 'aa' placeholder='Dish'"+
//					"onclick='getValue()'"+
//					"onblur='if(/[^0-9a-zA-Z_\.]/g.test(value))"+"alert('Dish Name Input Error, Check Your Dish Name')" + ">";

	num++;
	row.id = "row" + num;
	var cell1 = row.insertCell(-1);
	cell1.innerHTML = "<INPUT type='text' class='text' id='bb' placeholder='Price' >";
	num++;
}
function removeText() {

	var tab1 = document.getElementById("tab");
	var lastRow = tab1.rows.length;

	tab1.deleteRow(lastRow - 1);

}
function init_table() {
	for (var i = 0; i < 2; i++) {
		addText();
	}
	for (var i = 0; i < 2; i++) {
		addText();
	}
}
