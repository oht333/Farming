package com.gr.farming.cash.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CashServiceImpl implements CashService{
	
	private CashDAO dao;
	
	@Autowired
	public CashServiceImpl(CashDAO dao) {
		this.dao = dao;
	}

	public int insert(CashVO vo) {
		return dao.insert(vo);
	}

	public List<CashVO> selectAll() {
		return dao.selectAll();
	}
	
}
