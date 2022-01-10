package com.gr.farming.order.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDAO {
	public int insert(OrderVO vo);
}
