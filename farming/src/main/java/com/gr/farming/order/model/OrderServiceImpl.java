package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.farming.common.SearchVO2;

@Service
public class OrderServiceImpl implements OrderService{
	private OrderDAO dao;
	
	@Autowired
	public OrderServiceImpl(OrderDAO dao) {
		this.dao = dao;
	}

	public int insert(OrderVO vo) {
		return dao.insert(vo);
	}
	public List<OrderVO> select(SearchVO2 vo){
		return dao.select(vo);
	}
	public List<Map<String, Object>> selectByPay(SearchVO2 vo){
		return dao.selectByPay(vo);
	}
	public int totalRecord(int memberNo) {
		return dao.totalRecord(memberNo);
	}
}
