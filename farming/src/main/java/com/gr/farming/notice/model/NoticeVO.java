package com.gr.farming.notice.model;

import java.sql.Timestamp;

public class NoticeVO {
	private int noticeNo;
	private int adminNo;
	private String name;
	private String title;
	private String content;
	private Timestamp regdate;
	
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", adminNo=" + adminNo + ", name=" + name + ", title=" + title
				+ ", content=" + content + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
	
}
