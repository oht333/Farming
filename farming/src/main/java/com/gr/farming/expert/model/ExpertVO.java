package com.gr.farming.expert.model;

import java.sql.Timestamp;

public class ExpertVO {
	private int expertNo;
	private String name;
	private String email;
	private String pwd;
	private String address1;
	private String address2;
	private String zipCode;
	private Timestamp regDate;
	private int categoryNo;
	private int resumeCode;
	
	public int getExpertNo() {
		return expertNo;
	}
	public void setExpertNo(int expertNo) {
		this.expertNo = expertNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getResumeCode() {
		return resumeCode;
	}
	public void setResumeCode(int resumeCode) {
		this.resumeCode = resumeCode;
	}
	@Override
	public String toString() {
		return "ExpertVO [expertNo=" + expertNo + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", address1="
				+ address1 + ", address2=" + address2 + ", zipCode=" + zipCode + ", regDate=" + regDate
				+ ", categoryNo=" + categoryNo + ", resumeCode=" + resumeCode + "]";
	}
}
