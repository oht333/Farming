package com.gr.farming.request.model;

import java.sql.Timestamp;

public class RequestVO {

	private int requestNo;
	private int categoryNo;
	private int memberNo;
	private int expertNo;
	private int requestDesignNo;
	private int requestDevelopNo;
	private Timestamp sendTime;
	private String match;
	
	public int getRequestNo() {
		return requestNo;
	}
	public void setRequestNo(int requestNo) {
		this.requestNo = requestNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getExpertNo() {
		return expertNo;
	}
	public void setExpertNo(int expertNo) {
		this.expertNo = expertNo;
	}
	public int getRequestDesignNo() {
		return requestDesignNo;
	}
	public void setRequestDesignNo(int requestDesignNo) {
		this.requestDesignNo = requestDesignNo;
	}
	public int getRequestDevelopNo() {
		return requestDevelopNo;
	}
	public void setRequestDevelopNo(int requestDevelopNo) {
		this.requestDevelopNo = requestDevelopNo;
	}
	public Timestamp getSendTime() {
		return sendTime;
	}
	public void setSendTime(Timestamp sendTime) {
		this.sendTime = sendTime;
	}
	public String getMatch() {
		return match;
	}
	public void setMatch(String match) {
		this.match = match;
	}
	
	@Override
	public String toString() {
		return "RequestVO [requestNo=" + requestNo + ", categoryNo=" + categoryNo + ", memberNo=" + memberNo
				+ ", expertNo=" + expertNo + ", requestDesignNo=" + requestDesignNo + ", requestDevelopNo="
				+ requestDevelopNo + ", sendTime=" + sendTime + ", match=" + match + "]";
	}
	
	
	
}
