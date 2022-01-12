package com.gr.farming.order.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO2;


@Mapper
public interface OrderDAO {
	public int insert(OrderVO vo);
	public List<OrderVO> select(SearchVO2 vo);
	public List<Map<String, Object>> selectByPay(SearchVO2 vo);
	public int totalRecord(int memberNo);
}
