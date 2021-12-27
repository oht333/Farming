package com.gr.farming.request.model;

import java.sql.Timestamp;

public class RequestDevelopVO {

	private int REQUEST_DEVELOP_NO;
	private String PLATFORM;
	private String TYPE;
	private String CAREER;
	private String STEP;
	private String REFERENCE;
	private String DEADLINE;
	private String WORKTYPE;
	private String LOCATION1;
	private String LOCATION2;
	public int getREQUEST_DEVELOP_NO() {
		return REQUEST_DEVELOP_NO;
	}
	public void setREQUEST_DEVELOP_NO(int rEQUEST_DEVELOP_NO) {
		REQUEST_DEVELOP_NO = rEQUEST_DEVELOP_NO;
	}
	public String getPLATFORM() {
		return PLATFORM;
	}
	public void setPLATFORM(String pLATFORM) {
		PLATFORM = pLATFORM;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String tYPE) {
		TYPE = tYPE;
	}
	public String getCAREER() {
		return CAREER;
	}
	public void setCAREER(String cAREER) {
		CAREER = cAREER;
	}
	public String getSTEP() {
		return STEP;
	}
	public void setSTEP(String sTEP) {
		STEP = sTEP;
	}
	public String getREFERENCE() {
		return REFERENCE;
	}
	public void setREFERENCE(String rEFERENCE) {
		REFERENCE = rEFERENCE;
	}
	public String getDEADLINE() {
		return DEADLINE;
	}
	public void setDEADLINE(String dEADLINE) {
		DEADLINE = dEADLINE;
	}
	public String getWORKTYPE() {
		return WORKTYPE;
	}
	public void setWORKTYPE(String wORKTYPE) {
		WORKTYPE = wORKTYPE;
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
	@Override
	public String toString() {
		return "RequestDevelopVO [REQUEST_DEVELOP_NO=" + REQUEST_DEVELOP_NO + ", PLATFORM=" + PLATFORM + ", TYPE="
				+ TYPE + ", CAREER=" + CAREER + ", STEP=" + STEP + ", REFERENCE=" + REFERENCE + ", DEADLINE=" + DEADLINE
				+ ", WORKTYPE=" + WORKTYPE + ", LOCATION1=" + LOCATION1 + ", LOCATION2=" + LOCATION2 + "]";
	}
	
	
	
}
