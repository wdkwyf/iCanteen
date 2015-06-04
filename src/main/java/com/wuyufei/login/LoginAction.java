package com.wuyufei.login;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.User_DAO;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	User_DAO dao = new User_DAO();
	public void validate(){
		if(username.length() ==0) this.addActionError("username is reqiured");
		if(password.length() == 0) this.addActionError("password is required");
	}
	public String execute(){
		if(dao.authenticate(getUsername(),getPassword())){
			return "success";
		}
		else{
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

}
