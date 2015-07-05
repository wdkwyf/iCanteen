package com.wuyufei.business;

import com.opensymphony.xwork2.ActionSupport;

public class BuyAction extends ActionSupport {
	private String bid ="";

	@Override
	public String execute() throws Exception {
		System.out.println(bid+"-------");
		return "success";
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}
	
	
}
