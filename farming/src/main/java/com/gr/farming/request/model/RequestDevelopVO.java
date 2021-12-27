package com.gr.farming.request.model;

public class RequestDevelopVO {

	private int requestDevelopNo;
	private String platform;
	private String type;
	private String career;
	private String step;
	private String reference;
	private String location1;
	private String location2;
	
	public int getRequestDevelopNo() {
		return requestDevelopNo;
	}
	public void setRequestDevelopNo(int requestDevelopNo) {
		this.requestDevelopNo = requestDevelopNo;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getStep() {
		return step;
	}
	public void setStep(String step) {
		this.step = step;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public String getLocation1() {
		return location1;
	}
	public void setLocation1(String location1) {
		this.location1 = location1;
	}
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	
	@Override
	public String toString() {
		return "RequestDevelopVO [requestDevelopNo=" + requestDevelopNo + ", platform=" + platform + ", type=" + type
				+ ", career=" + career + ", step=" + step + ", reference=" + reference + ", location1=" + location1
				+ ", location2=" + location2 + "]";
	}
	
	
}
