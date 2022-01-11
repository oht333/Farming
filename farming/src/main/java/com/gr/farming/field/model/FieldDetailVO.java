package com.gr.farming.field.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FieldDetailVO {

	private int fieldNo;
	private int expertNo;
	private int categoryNo;
	private String main;
	private String detail;
	
	@Override
	public String toString() {
		return "FieldDetailVO [fieldNo=" + fieldNo + ", expertNo=" + expertNo + ", categoryNo=" + categoryNo + ", main="
				+ main + ", detail=" + detail + "]";
	}
}
