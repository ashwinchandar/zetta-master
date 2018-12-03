package com.zetta.bean;

import java.io.InputStream;

public class PolicyBean {
	 
	private Integer policyid;
	private String title;
	private InputStream policy;
	
	public Integer getPolicyid() {
		return policyid;
	}
	public void setPolicyid(Integer policyid) {
		this.policyid = policyid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public InputStream getPolicy() {
		return policy;
	}
	public void setPolicy(InputStream policy) {
		this.policy = policy;
	}
	 
}
