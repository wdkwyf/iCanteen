package com.wuyufei.dao;

import java.util.List;

import org.hibernate.Session;

import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;

public class Reg_DAO {
	public boolean authenticate(String username){
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM Userinfo AS u WHERE u.username='" + username + "'";
		System.out.println(HQL);
		List<Userinfo> list = session.createQuery(HQL).list();
		if(list.size() == 0) return true;   //this username is ok
		session.close();
		return false;
	}
	public void insert(String username,String password,String email,String telephone){
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		//add new userinfo object
		Userinfo ui = new Userinfo();
		ui.setUsername(username);
		ui.setPassword(password);
		ui.setEmail(email);
		ui.setTelephone(telephone);
		
		//save the userinfo into database
		session.save(ui);
		//commit
		session.getTransaction().commit();
		session.close();
		
	}
}
