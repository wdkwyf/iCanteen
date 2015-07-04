package com.wuyufei.dao;

import java.util.List;

import org.hibernate.Session;

import com.wuyufei.domain.Bussiness;
import com.wuyufei.util.HibernateUtil;

public class business_DAO {
	public List<Bussiness> showByMode(int mode){
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Bussiness> list;
		if(mode == 0){//select the first five business
			String HQL = "FROM Bussiness";
			list = (List<Bussiness>) session.createQuery(HQL).list();
			return list;
		} 
		session.close();
		return null;
	}
}
