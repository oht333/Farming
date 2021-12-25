package com.gr.farming.category.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{
	private CategoryDAO dao;
	
	@Autowired
	public CategoryServiceImpl(CategoryDAO dao) {
		this.dao = dao;
	}

	public int insert(CategoryVO vo) {
		return dao.insert(vo);
	}
	public List<CategoryVO> select(){
		return dao.select();
	}
	public CategoryVO selectByNo(int categoryNo) {
		return dao.selectByNo(categoryNo);
	}
	public int update(CategoryVO vo) {
		return dao.update(vo);
	}

	public int delete(int categoryNo) {
		return dao.delete(categoryNo);
	}
	
}
