package com.wuyufei.domain;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.util.HibernateUtil;

public class DoReadyAction extends ActionSupport {

	private static Session session;
	public List<HotNews> s = new ArrayList<HotNews>();
	
	public String execute() throws Exception {
		session = HibernateUtil.getSessionFactory().openSession();

		String hql = "FROM HotNews AS h ORDER BY h.id DESC";
		List<HotNews> hn = new ArrayList<HotNews>();
		hn = session.createQuery(hql).list();
		// System.out.println(hn.get(0).getUrl());
		if (hn.size() != 0) {
			for (int i = 0; i < 4; i++) { // retrieve the first 4 urls
				s.add((HotNews) hn.get(i));
			}
		}

		session.close();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("url", s);
		return "success";
	}

	public List<HotNews> getS() {
		return s;
	}

	public void setS(List<HotNews> s) {
		this.s = s;
	}
	
	
}
