package com.gr.farming.category.model;

import java.util.List;

public interface CategoryService {
	public int insert(CategoryVO vo);
	public List<CategoryVO> select();
	public CategoryVO selectByNo(int categoryNo);
	public int update(CategoryVO vo);
	public int delete(int categoryNo); 
}
