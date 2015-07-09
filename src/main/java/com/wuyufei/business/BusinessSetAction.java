package com.wuyufei.business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.User_DAO;
import com.wuyufei.dao.business_DAO;
import com.wuyufei.domain.Bussiness;
import com.wuyufei.domain.Userinfo;

public class BusinessSetAction extends ActionSupport {
	private String area;
	private int time;
	private float fare;
	private String username;
	

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession mySession = request.getSession();
		String username = (String)mySession.getAttribute("username");
		Bussiness b= new business_DAO().getBussinessByUsername(username);
		if(b == null){
			//insert
			Userinfo ui = new User_DAO().getUserinfoByUsername(username);
			new business_DAO().insert(username, ui, time, area, fare);
			
			return "success";
			
		}
		else{
			//update

			new business_DAO().update(username, time, area, fare);
			return "success";
		}
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public float getFare() {
		return fare;
	}
	public void setFare(float fare) {
		this.fare = fare;
	}
}
