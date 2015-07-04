package com.wuyufei.dao;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;

import com.wuyufei.cart.Order;
import com.wuyufei.domain.OrderList;
import com.wuyufei.domain.Userinfo;
import com.wuyufei.util.HibernateUtil;


public class Order_DAO {
	public List<OrderList> getOrderByUsername(String username){
		Session session = HibernateUtil.getSessionFactory().openSession();
		String HQL = "FROM OrderList ol ORDER BY ol.inserttime";    //AES
		List<OrderList> list = session.createQuery(HQL).list();
		
		for(int i = 0;i < list.size();i++){
			if(!list.get(i).getUserinfo().getUsername().equals(username)){
				list.remove(i);
				System.out.println("remove: "+i);
			}
		}
        if (list.size() > 0) {
            session.close();
            return list;
        }
        session.close();
        return null;
	}
	public void insert(String productName, int price, int qty,
			String userName, String telephone, String address) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Userinfo userinfo = new User_DAO().getUserinfoByUsername(userName);
		
		
		Date date = new Date();
		Timestamp curDate = new Timestamp(date.getTime());
		
		//add new orderList
		OrderList ol = new OrderList();
		ol.setProductName(productName);
		ol.setPrice(price);
		ol.setQty(qty);
		ol.setUserinfo(userinfo);
		ol.setTelephone(telephone);
		ol.setAddress(address);
		ol.setInserttime(curDate);
		//save the orderList into database
		session.save(ol);
		//commit
		session.getTransaction().commit();
		session.close();
		
	}
}
