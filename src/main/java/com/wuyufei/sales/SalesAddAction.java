package com.wuyufei.sales;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Sales_DAO;

public class SalesAddAction extends ActionSupport {
	private String dishName;
	private float dishPrice;
	private String username;
	
	@Override
	public String execute() throws Exception {
		System.out.println("name:"+dishName);
		System.out.println("price:"+dishPrice);
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession mySession = request.getSession();
		String username = (String)mySession.getAttribute("username");
		
		new Sales_DAO().insert(username, dishName, dishPrice);
		return "success";
	}
	public String getDishName() {
		return dishName;
	}
	public void setDishName(String dishName) {
		this.dishName = dishName;
	}
	public float getDishPrice() {
		return dishPrice;
	}
	public void setDishPrice(float dishPrice) {
		this.dishPrice = dishPrice;
	}
}
