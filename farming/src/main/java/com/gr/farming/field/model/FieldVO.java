package com.gr.farming.field.model;

public class FieldVO {
	private int fieldNo;
	private int expertNo;
	private int categoryNo;
	
	public int getFieldNo() {
		return fieldNo;
	}
	public void setFieldNo(int fieldNo) {
		this.fieldNo = fieldNo;
	}
	public int getExpertNo() {
		return expertNo;
	}
	public void setExpertNo(int expertNo) {
		this.expertNo = expertNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	@Override
	public String toString() {
		return "FieldVO [fieldNo=" + fieldNo + ", expertNo=" + expertNo + ", categoryNo=" + categoryNo + "]";
	}
	
	
}
