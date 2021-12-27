package com.gr.farming.request.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RequestServiceImpl implements RequestService{
	
	private final RequestDAO requestDao;
	
	@Autowired
	public RequestServiceImpl(RequestDAO requestDao) {
		this.requestDao = requestDao;
	}

	public int insertRequestDevelop(RequestDevelopVO vo) {
		return requestDao.insertRequestDevelop(vo);
	}

}
