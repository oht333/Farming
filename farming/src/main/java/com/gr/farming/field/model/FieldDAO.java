package com.gr.farming.field.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FieldDAO {
	public int insert(FieldVO vo);
}
