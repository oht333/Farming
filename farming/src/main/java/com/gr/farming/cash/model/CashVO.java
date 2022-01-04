package com.gr.farming.cash.model;

import java.sql.Timestamp;

public class CashVO {
	private int cashNo;
	private int cashPay;
	private Timestamp regDate;
	private int balance;
	private int memberNo;
	public int getCashNo() {
		return cashNo;
	}
	public void setCashNo(int cashNo) {
		this.cashNo = cashNo;
	}
	public int getCashPay() {
		return cashPay;
	}
	public void setCashPay(int cashPay) {
		this.cashPay = cashPay;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	@Override
	public String toString() {
		return "CashVO [cashNo=" + cashNo + ", cashPay=" + cashPay + ", regDate=" + regDate + ", balance=" + balance
				+ ", memberNo=" + memberNo + "]";
	}
	
	
}
