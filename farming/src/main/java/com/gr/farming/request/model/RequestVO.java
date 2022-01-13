package com.gr.farming.request.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestVO {

	private int requestNo;
	private int categoryNo;
	private int memberNo;
	private String name;
	private String filename;
	private int expertNo;
	private int requestDesignNo;
	private int requestDevelopNo;
	private Timestamp sendTime;
	private String match;
	
	@Override
	public String toString() {
		return "RequestVO [requestNo=" + requestNo + ", categoryNo=" + categoryNo + ", memberNo=" + memberNo + ", name="
				+ name + ", filename=" + filename + ", expertNo=" + expertNo + ", requestDesignNo=" + requestDesignNo
				+ ", requestDevelopNo=" + requestDevelopNo + ", sendTime=" + sendTime + ", match=" + match + "]";
	}
	
	

}
