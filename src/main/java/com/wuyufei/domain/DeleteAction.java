package com.wuyufei.domain;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.User_DAO;

public class DeleteAction extends ActionSupport implements ServletRequestAware{

	private HttpServletRequest request = null;
	private HttpSession session = null;
	private String delUserName;
	
	@Override
	public void validate() {
		System.out.println("validate:"+delUserName);
		if(delUserName.length()<=0 || delUserName==null)  {
			this.addActionError("Please Enter User Name!");
//			return;
		}else {
			Userinfo ui = new User_DAO().getUserinfoByUsername(delUserName);
			if(ui == null) {
				System.out.println("validate:"+delUserName+" not exists..");
				this.addActionError("User Name Not Exists ! Check it!");
			}
		}
	}
	
	@Override
	public String execute() throws Exception {
		boolean result = new User_DAO().delUserinfoByName(delUserName);
		if(result == true) {
			System.out.println("Delete Success...");
		}
		return "success";
	}
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
	}


	public String getDelUserName() {
		return delUserName;
	}


	public void setDelUserName(String delUserName) {
		this.delUserName = delUserName;
	}

}
