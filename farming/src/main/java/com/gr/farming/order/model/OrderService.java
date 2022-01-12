package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO2;

public interface OrderService {
	public int insert(OrderVO vo);
	public List<OrderVO> select(SearchVO2 vo);
	public List<Map<String, Object>> selectByPay(SearchVO2 vo);
	public int totalRecord(int memberNo);
}
