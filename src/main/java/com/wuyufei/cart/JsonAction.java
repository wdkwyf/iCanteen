package com.wuyufei.cart;

import java.awt.image.RescaleOp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Order_DAO;
import com.wuyufei.dao.User_DAO;
import com.wuyufei.domain.OrderList;
import com.wuyufei.domain.Userinfo;

public class JsonAction extends ActionSupport {
	private String json_product;
	private String json_custT;
	private String json_custA;
	private String username = "wuyufei";
	private ArrayList<Order> orderList;
	private Order_DAO dao = new Order_DAO();
	private EmailerAction emailer = new EmailerAction();

	@Override
	public String execute() throws Exception {
		JSONObject jsonObjSplit = new JSONObject(json_product);
		JSONArray ja = jsonObjSplit.getJSONArray("items");

		orderList = new ArrayList<Order>();
		HashSet<String> product = new HashSet<String>();

		for (int i = 0; i < ja.length(); i++) { // ja.length is the items of
												// product
			JSONObject jo = (JSONObject) ja.get(i);
			// System.out.println(jo.get("price").toString());
			product.add(jo.get("product").toString());
			Order tmp = new Order(jo.get("product").toString(),
					Integer.parseInt(jo.get("price").toString()),
					Integer.parseInt(jo.get("qty").toString()));
			orderList.add(tmp);
			if (product.size() != orderList.size()) { // have repeat
				for (int j = 0; j < orderList.size() - 1; j++) {
					Order o = orderList.get(j);
					if (o.getProduct().equals(tmp.getProduct())) {
						o.setQty(o.getQty() + tmp.getQty());
					}
				}
				orderList.remove(tmp);
			}
		}
		for (int i = 0; i < orderList.size(); i++) {
			dao.insert(orderList.get(i).getProduct(), orderList.get(i)
					.getPrice(), orderList.get(i).getQty(), username,
					json_custT, json_custA);
		}
		// send a email to business
		String to = new User_DAO().getUserinfoByUsername(username).getEmail();
		List<OrderList> ol = (new Order_DAO()).getOrderByUsername(username);
		for (int i = 0; i < ol.size(); i++) {
			System.out.println("----  " + ol.get(i).getAddress());
		}
		emailer.setTo(to);
		emailer.setSubject("You have receive a new order —— iCanteen");
		String body = "Dear " + username + ":\n";
		int count = ol.size();
		body += "You have receive " + count + " order(s) as followings:\n\n";
		for (OrderList orderItem : ol) {
			body += "Order" + orderItem.getOrderId() + ":\t"
					+ orderItem.getAddress() + "\t" + orderItem.getTelephone()
					+ "\t" + orderItem.getQty() + "\t"
					+ orderItem.getProductName() + "\nDate:\t"+orderItem.getInserttime()+"\n-------------------------------------\n";
		}
		body += "\n";
		body += "Please respond these orders as soon as possible.\n\n\n";
		body += "Yours sincerely,\niCanteen";
		emailer.setBody(body);
		emailer.execute();
		return "success";
	}

	public String getJson_product() {
		return json_product;
	}

	public void setJson_product(String json_product) {
		this.json_product = json_product;
	}

	public String getJson_custT() {
		return json_custT;
	}

	public void setJson_custT(String json_custT) {
		this.json_custT = json_custT;
	}

	public String getJson_custA() {
		return json_custA;
	}

	public void setJson_custA(String json_custA) {
		this.json_custA = json_custA;
	}

}
