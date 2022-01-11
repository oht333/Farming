package com.gr.farming.qcomment.model;

import java.sql.Timestamp;

public class QcommentVO {
	private int qcommnetNo;
	private int memberNo;
	private int qnaNo;
	private String content;
	private Timestamp date;
	
	
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	
	public int getQcommnetNo() {
		return qcommnetNo;
	}
	public void setQcommnetNo(int qcommnetNo) {
		this.qcommnetNo = qcommnetNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "QcommentVO [qcommnetNo=" + qcommnetNo + ", memberNo=" + memberNo + ", qnaNo=" + qnaNo + ", content="
				+ content + ", date=" + date + "]";
	}
	
	
}
