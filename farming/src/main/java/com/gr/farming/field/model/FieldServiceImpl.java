package com.gr.farming.field.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FieldServiceImpl implements FieldService{
	private FieldDAO dao;

	@Autowired
	public FieldServiceImpl(FieldDAO dao) {
		this.dao = dao;
	}
	
	public int insert(FieldVO vo) {
		return dao.insert(vo);
	}
	
}
