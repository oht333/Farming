package com.gr.farming.request.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequestDesignVO {

	private int requestDesignNo;
	private String TYPE;
	private String RANGE;
	private String SCALE;
	private String DEADLINE;
	private String LOCATION1;
	private String LOCATION2;
	private String QUESTION;
	
	@Override
	public String toString() {
		return "RequestDesignVO [requestDesignNo=" + requestDesignNo + ", TYPE=" + TYPE + ", RANGE=" + RANGE
				+ ", SCALE=" + SCALE + ", DEADLINE=" + DEADLINE + ", LOCATION1=" + LOCATION1 + ", LOCATION2="
				+ LOCATION2 + ", QUESTION=" + QUESTION + "]";
	}
	
}
