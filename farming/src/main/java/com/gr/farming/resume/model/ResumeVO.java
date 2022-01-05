package com.gr.farming.resume.model;

public class ResumeVO {
	private int resumeCode;
	private int categoryNo;
	private int expertNo;
	private String intro;
	private String detailIntro;
	private String career;
	private String certificate;
	private String staff;
	
	public int getResumeCode() {
		return resumeCode;
	}
	public void setResumeCode(int resumeCode) {
		this.resumeCode = resumeCode;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public int getExpertNo() {
		return expertNo;
	}
	public void setExpertNo(int expertNo) {
		this.expertNo = expertNo;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getDetailIntro() {
		return detailIntro;
	}
	public void setDetailIntro(String detailIntro) {
		this.detailIntro = detailIntro;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	@Override
	public String toString() {
		return "ResumeVO [resumeCode=" + resumeCode + ", categoryNo=" + categoryNo + ", expertNo=" + expertNo
				+ ", intro=" + intro + ", detailIntro=" + detailIntro + ", career=" + career + ", certificate="
				+ certificate + ", staff=" + staff + "]";
	}
}
