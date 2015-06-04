package com.wuyufei.domain;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.wuyufei.util.HibernateUtil;

/**
 * Servlet implementation class DoReady
 */
public class DoReady extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Session session;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoReady() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		session = HibernateUtil.getSessionFactory().openSession();

		String hql = "from HotNews as h order by h.id desc";
		List<HotNews> hn = new ArrayList<HotNews>();
		List<HotNews> s = new ArrayList<HotNews>();
		hn = session.createQuery(hql).list();
		// System.out.println(hn.get(0).getUrl());
		if (hn.size() != 0) {
			for (int i = 0; i < 4; i++) { // retrieve the first 4 urls
				s.add((HotNews) hn.get(i));
			}
		}

		session.close();
		request.setAttribute("url", s);
		RequestDispatcher d = request.getRequestDispatcher("jsp/index.jsp");
		d.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
