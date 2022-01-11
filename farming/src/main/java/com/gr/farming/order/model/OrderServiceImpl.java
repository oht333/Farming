package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public List<OrderVO> select(int memberNo){
		return dao.select(memberNo);
	}
	public List<Map<String, Object>> selectByPay(int memberNo){
		return dao.selectByPay(memberNo);
	}
}
