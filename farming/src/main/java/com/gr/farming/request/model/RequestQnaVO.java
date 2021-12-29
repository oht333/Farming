package com.gr.farming.request.model;

public class RequestQnaVO {

	private int QNA_NO;
	private int CATEGORY_NO; 
	private String REQUEST_QUESTION;
	private String REQUEST_INFO;
	private String REQUEST_ANSWER;
	
	public int getQNA_NO() {
		return QNA_NO;
	}
	public void setQNA_NO(int qNA_NO) {
		QNA_NO = qNA_NO;
	}
	public int getCATEGORY_NO() {
		return CATEGORY_NO;
	}
	public void setCATEGORY_NO(int cATEGORY_NO) {
		CATEGORY_NO = cATEGORY_NO;
	}
	public String getREQUEST_QUESTION() {
		return REQUEST_QUESTION;
	}
	public void setREQUEST_QUESTION(String rEQUEST_QUESTION) {
		REQUEST_QUESTION = rEQUEST_QUESTION;
	}
	public String getREQUEST_INFO() {
		return REQUEST_INFO;
	}
	public void setREQUEST_INFO(String rEQUEST_INFO) {
		REQUEST_INFO = rEQUEST_INFO;
	}
	public String getREQUEST_ANSWER() {
		return REQUEST_ANSWER;
	}
	public void setREQUEST_ANSWER(String rEQUEST_ANSWER) {
		REQUEST_ANSWER = rEQUEST_ANSWER;
	}
	
	@Override
	public String toString() {
		return "RequestQnaVO [QNA_NO=" + QNA_NO + ", CATEGORY_NO=" + CATEGORY_NO + ", REQUEST_QUESTION="
				+ REQUEST_QUESTION + ", REQUEST_INFO=" + REQUEST_INFO + ", REQUEST_ANSWER=" + REQUEST_ANSWER + "]";
	}
	
	
	
}
