package com.gr.farming.cash.model;

public interface CashService {
	public int insert(CashVO vo);
	public int plusBal(int memberNo);
	public CashVO selectByMemNo(int memberNo);
	public int totalRecord(int memberNo);
}
