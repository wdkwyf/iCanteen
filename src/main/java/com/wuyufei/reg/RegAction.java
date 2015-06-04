package com.wuyufei.reg;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Reg_DAO;

public class RegAction extends ActionSupport {
	private String username;
	private String password;
	private String confirmPassword;
	private String email;
	private String telephone;
	Reg_DAO dao = new Reg_DAO();
	public void validate(){
		if(!(getPassword().equals(getConfirmPassword()))){
			this.addActionError("no match password");
		}
		
	}
	public String execute() {
		if (dao.authenticate(getUsername())) {
			dao.insert(username, password, email, telephone);
			return "success";
		} else {
			this.addActionError("this username already exists");
			return "input";
		}

	}
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
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

	public String addCustomer() {
		return SUCCESS;
	}

	public String getName() {
		return username;
	}

	public void setName(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

}
