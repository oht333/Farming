package com.gr.farming.category.model;

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
	
}
