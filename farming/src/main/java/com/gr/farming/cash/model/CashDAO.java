package com.gr.farming.cash.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CashDAO {
	public int insert(CashVO vo);
	public List<CashVO> selectAll(); 
}
