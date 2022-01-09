package com.gr.farming.findExp.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldVO;

@Service
public class FindExpServiceImpl implements FindExpService{

	private final FindExpDAO findExpDao;

	@Autowired
	public FindExpServiceImpl(FindExpDAO findExpDao) {
		this.findExpDao = findExpDao;
	}

	@Override
	public int insertExpInfo(ExpertInfoVO vo) {
		return findExpDao.insertExpInfo(vo);
	}

	@Override
	public ExpertInfoVO selectExpInfo(int expertNo) {
		return findExpDao.selectExpInfo(expertNo);
	}

	@Override
	public ExpertVO selectByExperNo(int expertNo) {
		return findExpDao.selectByExperNo(expertNo);
	}

	@Override
	public List<Map<String, Object>> selectField(int expertNo) {
		return findExpDao.selectField(expertNo);
	}

	@Override
	public int updateIntro(ExpertInfoVO vo) {
		return findExpDao.updateIntro(vo);
	}

	@Override
	public int updateDetailInfo(ExpertInfoVO vo) {
		return findExpDao.updateDetailInfo(vo);
	}

	@Override
	public int updateExpInfo(ExpertInfoVO vo) {
		return findExpDao.updateExpInfo(vo);
	}
	
	
}
