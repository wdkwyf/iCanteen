package com.wuyufei.cart;

import java.awt.image.RescaleOp;
import java.util.ArrayList;
import java.util.HashSet;

import org.json.JSONArray;
import org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.wuyufei.dao.Order_DAO;

public class JsonAction extends ActionSupport {
	private String json_product;
	private String json_custT;
	private String json_custA;
	private ArrayList<Order> orderList;
	private Order_DAO dao = new Order_DAO();

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
					.getPrice(), orderList.get(i).getQty(), "wuyufei",
					json_custT, json_custA);
		}
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
