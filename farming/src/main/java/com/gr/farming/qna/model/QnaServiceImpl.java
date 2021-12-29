package com.gr.farming.qna.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService{
	private final QnaDAO qnaDao;

	@Autowired
	public QnaServiceImpl(QnaDAO qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public int insertQna(QnaVO vo) {
		return qnaDao.insertQna(vo);
	}
	
	
	
	
}
