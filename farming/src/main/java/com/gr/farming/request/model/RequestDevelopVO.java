package com.gr.farming.request.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestDevelopVO {

	private int requestdevelopNo;
	private String PLATFORM;
	private String TYPE;
	private String CAREER;
	private String STEP;
	private String REFERENCE;
	private String DEADLINE;
	private String WORKTYPE;
	private String LOCATION1;
	private String LOCATION2;
	
	@Override
	public String toString() {
		return "RequestDevelopVO [requestdevelopNo=" + requestdevelopNo + ", PLATFORM=" + PLATFORM + ", TYPE=" + TYPE
				+ ", CAREER=" + CAREER + ", STEP=" + STEP + ", REFERENCE=" + REFERENCE + ", DEADLINE=" + DEADLINE
				+ ", WORKTYPE=" + WORKTYPE + ", LOCATION1=" + LOCATION1 + ", LOCATION2=" + LOCATION2 + "]";
	}
	
	
}
