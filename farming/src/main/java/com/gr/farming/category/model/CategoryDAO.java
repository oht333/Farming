package com.gr.farming.category.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryDAO {
	public int insert(CategoryVO vo);
	public List<CategoryVO> select();
	public CategoryVO selectByNo(int categoryNo);
	public int update(CategoryVO vo);
	public int delete(int categoryNo);
}
