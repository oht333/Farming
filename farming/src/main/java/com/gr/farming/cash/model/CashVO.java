package com.gr.farming.cash.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CashVO {
	private int cashNo;
	private String merchantUid;
	private int memberId;
	private int charge;
	private int balance;
	private Timestamp time;
}
