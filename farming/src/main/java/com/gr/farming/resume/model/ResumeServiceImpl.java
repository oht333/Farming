package com.gr.farming.resume.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeServiceImpl implements ResumeService{
	
	private ResumeDAO dao;
	
	@Autowired
	public ResumeServiceImpl(ResumeDAO dao) {
		this.dao = dao;
	}

	public int insert(ResumeVO vo) {
		return dao.insert(vo);
	}
	
}
