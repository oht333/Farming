package com.gr.farming.order.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {
	private String merchantUid;
	private String memberName;
	private String expertName;
	private int serviceNo;
	private String serviceName;
	private int price;
	private String state;
	private Timestamp time;
}
