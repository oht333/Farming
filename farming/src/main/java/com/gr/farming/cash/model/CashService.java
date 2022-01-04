package com.gr.farming.cash.model;

import java.util.List;

public interface CashService {
	public int insert(CashVO vo);
	public List<CashVO> selectAll();
}
