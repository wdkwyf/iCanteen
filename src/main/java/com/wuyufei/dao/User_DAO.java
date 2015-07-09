package com.wuyufei.dao;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;

import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;

public class User_DAO {
	
	public boolean authenticate(String username,String password){
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM Userinfo AS u WHERE u.username='" + username + "' AND u.password='" + password + "'";
		System.out.println(HQL);
		List<Userinfo> list = session.createQuery(HQL).list();
        if (list.size() > 0) {
            session.close();
            return true;
        }
        session.close();
        return false;
		
	}
	public Userinfo getUserinfoByUsername(String username){
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM Userinfo AS u WHERE u.username='" + username+"'";
		System.out.println("getUserinfoByUsername"+HQL);
		List<Userinfo> list = session.createQuery(HQL).list();
		if(list.size() > 0){
			session.close();
			return list.get(0);
		}
		return null;
	}
	
	public boolean delUserinfoByName(String username) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.getTransaction().begin();
		final String hql = "delete from Userinfo where username = :username";
		Query query = session.createQuery(hql);
		query.setString("username", username);
		System.out.println("before execute");
		int result = query.executeUpdate();
		System.out.println("after execute");
		session.getTransaction().commit();
		session.close();
		System.out.println("update is "+result);
		if(result >0)
			return true;
        return false;
	}
}
