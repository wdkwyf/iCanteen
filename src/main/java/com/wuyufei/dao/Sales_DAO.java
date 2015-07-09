package com.wuyufei.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wuyufei.domain.Sales;
import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;

public class Sales_DAO {
	public List<Sales> getSalesByUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM Sales s WHERE s.username='" + username + "'";
		List<Sales> list = session.createQuery(HQL).list();

		if (list.size() > 0) {
			session.close();
			return list;
		}
		session.close();
		return null;
	}
	public void insert(String username,String dishName,float dishPrice){
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		//add new userinfo object
		Sales sales = new Sales();
		sales.setDishname(dishName);
		sales.setDishprice(dishPrice);
		sales.setUsername(username);
		
		
		//save the userinfo into database
		session.save(sales);
		//commit
		session.getTransaction().commit();
		session.close();
	}
	public boolean deleteSalesByDishName(String username, String dishName) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session
				.createQuery("delete from Sales where username = :username and dishname= :dishname");
		query.setParameter("username", username);
		query.setParameter("dishname", dishName);
	
		int result = query.executeUpdate();
		System.out.println("result:"+result);
		session.getTransaction().commit();
		session.close();
		return true;
	}
}
