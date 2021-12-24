package com.gr.farming.category.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryDAO {
	public int insert(CategoryVO vo);
}
