package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gr.farming.common.SearchVO;

@Service
public class QnaServiceImpl implements QnaService{
	private final QnaDAO qnaDao;

	@Autowired
	public QnaServiceImpl(QnaDAO qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Transactional
	public int insertQna(QnaVO vo) {
		return qnaDao.insertQna(vo);
	}

	@Override
	public List<QnaVO> selectAll(SearchVO searchVO) {
		return qnaDao.selectAll(searchVO);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return qnaDao.selectTotalRecord(searchVo);
	}

	@Override
	public int updateQna(QnaVO vo) {
		// TODO Auto-generated method stub
		return qnaDao.updateQna(vo);
	}

	@Override
	public void deleteQna(Map<String, String> map) {
		qnaDao.deleteQna(map);
		
	}

	@Override
	public QnaVO selectByNo(int no) {
		// TODO Auto-generated method stub
		return qnaDao.selectByNo(no);
	}
	
	
	
	
}
