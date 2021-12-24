package com.gr.farming.category.model;

public class CategoryVO {
	private int categoryNo;
	private String main;
	private String detail;
	
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "CategoryVO [categoryNo=" + categoryNo + ", main=" + main + ", detail=" + detail + "]";
	}
	
	
}
