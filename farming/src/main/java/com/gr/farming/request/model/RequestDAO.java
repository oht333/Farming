package com.gr.farming.request.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RequestDAO {

	public int insertRequestDevelop(RequestDevelopVO vo);
	public List<RequestQnaVO> selectByCategoryNo(int categoryNo);
}
