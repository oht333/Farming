package com.gr.farming.request.model;

import java.sql.Timestamp;

public class RequestDesignVO {

	private int REQUEST_DESIGN_NO;
	private String TYPE;
	private String RANGE;
	private String SCALE;
	private String DEADLINE;
	private String LOCATION1;
	private String LOCATION2;
	private String QUESTION;
	
	public int getREQUEST_DESIGN_NO() {
		return REQUEST_DESIGN_NO;
	}
	public void setREQUEST_DESIGN_NO(int rEQUEST_DESIGN_NO) {
		REQUEST_DESIGN_NO = rEQUEST_DESIGN_NO;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String tYPE) {
		TYPE = tYPE;
	}
	public String getRANGE() {
		return RANGE;
	}
	public void setRANGE(String rANGE) {
		RANGE = rANGE;
	}
	public String getSCALE() {
		return SCALE;
	}
	public void setSCALE(String sCALE) {
		SCALE = sCALE;
	}
	public String getDEADLINE() {
		return DEADLINE;
	}
	public void setDEADLINE(String dEADLINE) {
		DEADLINE = dEADLINE;
	}
	public String getLOCATION1() {
		return LOCATION1;
	}
	public void setLOCATION1(String lOCATION1) {
		LOCATION1 = lOCATION1;
	}
	public String getLOCATION2() {
		return LOCATION2;
	}
	public void setLOCATION2(String lOCATION2) {
		LOCATION2 = lOCATION2;
	}
	public String getQUESTION() {
		return QUESTION;
	}
	public void setQUESTION(String qUESTION) {
		QUESTION = qUESTION;
	}
	@Override
	public String toString() {
		return "RequestDesignVO [REQUEST_DESIGN_NO=" + REQUEST_DESIGN_NO + ", TYPE=" + TYPE + ", RANGE=" + RANGE
				+ ", SCALE=" + SCALE + ", DEADLINE=" + DEADLINE + ", LOCATION1=" + LOCATION1 + ", LOCATION2="
				+ LOCATION2 + ", QUESTION=" + QUESTION + "]";
	}
	
	
}
