package com.wuyufei.dao;

import java.util.List;

import org.hibernate.Session;

import com.wuyufei.domain.Sales;
import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;

public class Buy_DAO {
	public List<Sales> getSalesByUsername(String username){
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL ="FROM Sales as s where s.username ='"+username+"'";
		System.out.println(HQL);
		List<Sales> list = session.createQuery(HQL).list();
        if (list.size() > 0) {
            session.close();
            return list;
        }
        session.close();
		return null;
	}
}
