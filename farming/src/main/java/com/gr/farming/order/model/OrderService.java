package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

public interface OrderService {
	public int insert(OrderVO vo);
	public List<OrderVO> select(SearchVO3 vo);
	public List<Map<String, Object>> selectByPay(SearchVO3 vo);
	public int totalRecord(int memberNo);
}
