package com.gr.farming.request.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RequestDAO {

	public int insertRequestDevelop(RequestDevelopVO vo);
}
