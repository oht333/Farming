package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gr.farming.common.SearchVO;
import com.gr.farming.qna.model.QnaVO;

@Service
public class KnowHowServiceImpl implements KnowHowService {
	
	private final KnowHowDAO knowhowDao;
	
	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public KnowHowServiceImpl(KnowHowDAO knowhowDao) {
		this.knowhowDao = knowhowDao;
	}

	@Override
	public List<KnowHowVO> selectKnowhowAll(SearchVO3 searchVo) {
		return knowhowDao.selectKnowhowAll(searchVo);
	}

	public int insertKnowhow(KnowHowVO vo) {
		return knowhowDao.insertKnowhow(vo);
	}
	
	@Override
	public KnowHowVO selectByNo(int no) {
		return knowhowDao.selectByNo(no);
	}

	@Override
	public int selectTotalRecord(SearchVO3 searchVo) {
		return knowhowDao.selectTotalRecord(searchVo);
	}
	
	@Override
	public int updateReadCount(int no) {
		return knowhowDao.updateReadCount(no);
	}

	@Override
	public int updateKnowhow(KnowHowVO vo) {
		return knowhowDao.updateKnowhow(vo);
	}

	@Override
	public int deleteKnowhow(int knowhowNo) {
		return knowhowDao.deleteKnowhow(knowhowNo);		
	}
	
	@Transactional
	@Override
	public int reply(KnowHowVO vo) {
		int cnt=knowhowDao.updateSortNo(vo);
		cnt=knowhowDao.reply(vo);
		return cnt;
	}



}
