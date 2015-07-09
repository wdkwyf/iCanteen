package com.wuyufei.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wuyufei.domain.Bussiness;
import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;

public class business_DAO {
	public List<Bussiness> showByMode(int mode) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Bussiness> list;
		if (mode == 0) {// select the first five business
			String HQL = "FROM Bussiness";
			list = (List<Bussiness>) session.createQuery(HQL).list();
			return list;
		}
		session.close();
		return null;
	}

	public Bussiness getBussinessByUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM Bussiness as b where b.username ='" + username + "'";
		List<Bussiness> result = session.createQuery(HQL).list();
		if (result.size() == 1) {
			session.close();
			return result.get(0);
		}
		session.close();
		return null;
	}

	public boolean update(String username, int time, String area, float fare) {
		 Session session =  HibernateUtil.getSessionFactory().openSession();  
	        session.beginTransaction();  
	        Query query = session.createQuery("UPDATE Bussiness AS b SET"+" b.area = :area,"+"b.fare= :fare,"+"b.time= :time"+" WHERE username = :username");  
	        query.setParameter("username", username);
	        query.setParameter("area", area);
	        query.setParameter("fare", fare);
	        query.setParameter("time", time);
	        query.executeUpdate();  
	        session.getTransaction().commit();  
		return true;
	}

	public boolean insert(String username, Userinfo userinfo, int time,
			String area, float fare) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		Bussiness b = new Bussiness();
		b.setUserinfo(userinfo);
		b.setArea(area);
		b.setUsername(username);
		b.setFare(fare);
		b.setTime(time);

		session.save(b);

		// commit
		session.getTransaction().commit();
		session.close();
		return true;

	}
}
