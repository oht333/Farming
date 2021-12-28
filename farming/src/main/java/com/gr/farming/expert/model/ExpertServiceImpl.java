package com.gr.farming.expert.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExpertServiceImpl implements ExpertService{
	private ExpertDAO dao;
	
	@Autowired
	public ExpertServiceImpl(ExpertDAO dao) {
		this.dao = dao;
	}
	
	
}
