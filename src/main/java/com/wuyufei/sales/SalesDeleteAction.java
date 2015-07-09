package com.wuyufei.sales;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Sales_DAO;

public class SalesDeleteAction extends ActionSupport {

	private String dishName;
	private String username;
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession mySession = request.getSession();
		
		String username = (String)mySession.getAttribute("username");
		System.out.println("u:"+username);
		System.out.println("d:"+dishName+"---");
		new Sales_DAO().deleteSalesByDishName(username, dishName);
		return "success";
	}
	public String getDishName() {
		return dishName;
	}
	public void setDishName(String dishName) {
		this.dishName = dishName;
	}
	
	
}
