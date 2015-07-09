package com.wuyufei.login;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.User_DAO;

public class LoginAction extends ActionSupport implements ServletRequestAware {
	private String username;
	private String password;
	private HttpServletRequest myRequest;
	private HttpSession mySession;
	User_DAO dao = new User_DAO();
	
	
	public void validate() {
		if (username.length() == 0)
			this.addActionError("username is reqiured");
		if (password.length() == 0)
			this.addActionError("password is required");
	}

	public String execute() {
		if (dao.authenticate(getUsername(), getPassword())) {
			
			mySession.setAttribute("username", username);
			
			//admin check....
			if(username.equals("admin")) {
				System.out.println("Now Admin Login...");
//				return "admin";
			}
			
			return "success";
		} else {
			this.addActionError("invalid username or password");
			return "error";
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.myRequest = request;
		this.mySession = myRequest.getSession();
		
	}
	

}
