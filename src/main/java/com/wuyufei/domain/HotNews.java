package com.wuyufei.domain;
// Generated 2015-7-3 19:47:40 by Hibernate Tools 3.4.0.CR1

/**
 * HotNews generated by hbm2java
 */
public class HotNews implements java.io.Serializable {

	private Integer id;
	private String url;

	public HotNews() {
	}

	public HotNews(String url) {
		this.url = url;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
