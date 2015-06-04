package com.wuyufei.dao;

import org.hibernate.Session;

import com.wuyufei.domain.OrderList;
import com.wuyufei.util.HibernateUtil;


public class Order_DAO {
	public void insert(String productName, int price, int qty,
			String bussinessId, String telephone, String address) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		//add new orderList
		OrderList ol = new OrderList();
		ol.setProductName(productName);
		ol.setPrice(price);
		ol.setQty(qty);
		ol.setBussinessId(bussinessId);
		ol.setTelephone(telephone);
		ol.setAddress(address);

		//save the orderList into database
		session.save(ol);
		//commit
		session.getTransaction().commit();
		session.close();
	}
}
