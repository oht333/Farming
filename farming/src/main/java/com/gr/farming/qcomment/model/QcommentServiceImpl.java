package com.gr.farming.qcomment.model;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class QcommentServiceImpl implements QcommentService{
	private final QcommentDAO qcommentDao;

	public QcommentServiceImpl(QcommentDAO qcommentDao) {
		this.qcommentDao = qcommentDao;
	}

	@Override
	public List<QcommentVO> list(int qnaNo) {
		// TODO Auto-generated method stub
		return qcommentDao.list(qnaNo);
	}

	@Override
	public int write(QcommentVO vo) {
		// TODO Auto-generated method stub
		return qcommentDao.write(vo);
	}

	@Override
	public int update(QcommentVO vo) {
		// TODO Auto-generated method stub
		return qcommentDao.update(vo);
	}

	@Override
	public int delete(int no) {
		// TODO Auto-generated method stub
		return qcommentDao.delete(no);
	}

	

	
	
	
}
