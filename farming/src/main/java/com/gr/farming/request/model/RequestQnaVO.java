package com.gr.farming.request.model;

public class RequestQnaVO {

	private int qNo;
	private int categoryNo; 
	private String qClass;
	private String question;
	private String info;
	private String type;
	private String answer;
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getqClass() {
		return qClass;
	}
	public void setqClass(String qClass) {
		this.qClass = qClass;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "RequestQnaVO [qNo=" + qNo + ", categoryNo=" + categoryNo + ", qClass=" + qClass + ", question="
				+ question + ", info=" + info + ", type=" + type + ", answer=" + answer + "]";
	}
	
	
	
}
