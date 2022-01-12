package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDAO {
	public int insert(OrderVO vo);
	public List<OrderVO> select(int memberNo);
	public List<Map<String, Object>> selectByPay(int memberNo);
}
