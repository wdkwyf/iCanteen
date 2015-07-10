package com.wuyufei.business;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Buy_DAO;
import com.wuyufei.dao.business_DAO;
import com.wuyufei.domain.Sales;

public class BuyAction extends ActionSupport {
	private String bid ="";

	
	@Override
	public void validate() {
		if(new business_DAO().getBussinessByUsername(bid) == null){
			this.addActionError("no such business");
		}
		
	}

	@Override
	public String execute() throws Exception {
		System.out.println(bid+"-------");
		List<Sales> saleList = new Buy_DAO().getSalesByUsername(bid);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("saleinfo", saleList);
		request.setAttribute("username", bid);
		
		return "success";
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}
	
	
}
