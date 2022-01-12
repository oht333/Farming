package com.gr.farming.category.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;

@Mapper
public interface CategoryDAO {
	public int insert(CategoryVO vo);
	public List<CategoryVO> select(SearchVO4 searchVo);
	public CategoryVO selectByNo(int categoryNo);
	public int update(CategoryVO vo);
	public int delete(int categoryNo); 
	public List<CategoryVO> selectByMain(String main);
	int selectTotalRecord(SearchVO4 searchVo);
	
	
	public int selectByDetail(String detail);
}
