function removeOptions(selectObj) {
	if (typeof selectObj != 'object') {
		selectObj = document.getElementById(selectObj);
	}

	// 原有选项计数
	var len = selectObj.options.length;

	for (var i = 0; i < len; i++) {
		// 移除当前选项
		selectObj.options[0] = null;
	}
}

function setSelectOption(selectObj, optionList, firstOption, selected) {
	if (typeof selectObj != 'object') {
		selectObj = document.getElementById(selectObj);
	}

	// 清空选项
	removeOptions(selectObj);

	// 选项计数
	var start = 0;

	// 如果需要添加第一个选项
	if (firstOption) {
		selectObj.options[0] = new Option(firstOption, '');

		// 选项计数从 1 开始
		start++;
	}

	var len = optionList.length;

	for (var i = 0; i < len; i++) {
		// 设置 option
		selectObj.options[start] = new Option(optionList[i].txt,
				optionList[i].val);

		// 选中项
		if (selected == optionList[i].val) {
			selectObj.options[start].selected = true;
		}

		// 计数加 1
		start++;
	}

}
var cityArr = [];
cityArr['嘉定区'] = [ {
	txt : '同济大学嘉定校区',
	val : '同济大学嘉定校区'
}, {
	txt : '上海大学嘉定校区',
	val : '上海大学嘉定校区'
}, {
	txt : '上海科技干部管理学院',
	val : '上海科技干部管理学院'
},

];
cityArr['杨浦区'] = [ {
	txt : '复旦大学',
	val : '复旦大学'
}, {
	txt : '交通大学',
	val : '交通大学'
}, {
	txt : '同济大学',
	val : '同济大学'
},

];

function setCity(province) {
	setSelectOption('city', cityArr[province], '-请选择-');
}