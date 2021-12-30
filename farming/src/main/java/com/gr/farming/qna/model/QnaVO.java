package com.gr.farming.qna.model;

import java.sql.Timestamp;

public class QnaVO {
	private int no;
	private int memberNo;
	private String title;
	private Timestamp regdate;
	private int readcount;
	private String content;
	
	//답변형 게시판 필드
	private int groupNo;
	private int step; 
	private int sortNo;  
	private String delFlag;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getSortNo() {
		return sortNo;
	}

	public void setSortNo(int sortNo) {
		this.sortNo = sortNo;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}


	@Override
	public String toString() {
		return "QnaVO [no=" + no + ", memberNo=" + memberNo + ", title=" + title + ", regdate=" + regdate
				+ ", readcount=" + readcount + ", content=" + content + ", groupNo=" + groupNo + ", step=" + step
				+ ", sortNo=" + sortNo + ", delFlag=" + delFlag + "]";
	}

	
	
	
}
