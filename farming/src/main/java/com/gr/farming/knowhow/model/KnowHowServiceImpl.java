package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gr.farming.common.SearchVO;

@Service
public class KnowHowServiceImpl implements KnowHowService {
	
	private final KnowHowDAO knowhowDao;
	
	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public KnowHowServiceImpl(KnowHowDAO knowhowDao) {
		this.knowhowDao = knowhowDao;
	}

	public List<KnowHowVO> selectKnowhowAll() {
		return knowhowDao.selectKnowhowAll();
	}
	
	@Transactional
	public int insertKnowhow(KnowHowVO vo) {
		return knowhowDao.insertKnowhow(vo);
	}
}
