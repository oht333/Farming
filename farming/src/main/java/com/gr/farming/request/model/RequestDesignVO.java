package com.gr.farming.request.model;

import java.sql.Timestamp;

public class RequestDesignVO {

	private int requestDesignNo;
	private String type;
	private String range;
	private String scale;
	private String develop;
	private Timestamp deadline;
	private String location1;
	private String location2;
	private String question;
	
	public int getRequestDesignNo() {
		return requestDesignNo;
	}
	public void setRequestDesignNo(int requestDesignNo) {
		this.requestDesignNo = requestDesignNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getDevelop() {
		return develop;
	}
	public void setDevelop(String develop) {
		this.develop = develop;
	}
	public Timestamp getDeadline() {
		return deadline;
	}
	public void setDeadline(Timestamp deadline) {
		this.deadline = deadline;
	}
	public String getLocation1() {
		return location1;
	}
	public void setLocation1(String location1) {
		this.location1 = location1;
	}
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	@Override
	public String toString() {
		return "RequestDesignVO [requestDesignNo=" + requestDesignNo + ", type=" + type + ", range=" + range
				+ ", scale=" + scale + ", develop=" + develop + ", deadline=" + deadline + ", location1=" + location1
				+ ", location2=" + location2 + ", question=" + question + "]";
	}
	
	
}
