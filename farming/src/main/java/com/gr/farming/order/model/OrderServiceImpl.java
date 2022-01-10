package com.gr.farming.order.model;

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
}
