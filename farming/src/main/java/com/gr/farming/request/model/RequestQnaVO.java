package com.gr.farming.request.model;

public class RequestQnaVO {

	private int qnaNo;
	private int categoryNo; 
	private String requestClass;
	private String requestQuestion;
	private String requestInfo;
	private String requestAnswer;
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getRequestClass() {
		return requestClass;
	}
	public void setRequestClass(String requestClass) {
		this.requestClass = requestClass;
	}
	public String getRequestQuestion() {
		return requestQuestion;
	}
	public void setRequestQuestion(String requestQuestion) {
		this.requestQuestion = requestQuestion;
	}
	public String getRequestInfo() {
		return requestInfo;
	}
	public void setRequestInfo(String requestInfo) {
		this.requestInfo = requestInfo;
	}
	public String getRequestAnswer() {
		return requestAnswer;
	}
	public void setRequestAnswer(String requestAnswer) {
		this.requestAnswer = requestAnswer;
	}
	@Override
	public String toString() {
		return "RequestQnaVO [qnaNo=" + qnaNo + ", categoryNo=" + categoryNo + ", requestClass=" + requestClass
				+ ", requestQuestion=" + requestQuestion + ", requestInfo=" + requestInfo + ", requestAnswer="
				+ requestAnswer + "]";
	}
	
}
