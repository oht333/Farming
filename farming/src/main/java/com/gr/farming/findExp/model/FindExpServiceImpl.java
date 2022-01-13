package com.gr.farming.findExp.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldDetailVO;
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
	public List<FieldDetailVO> selectFieldDetail(int expertNo) {
		return findExpDao.selectFieldDetail(expertNo);
	}

	@Override
	public int updateExpInfo(ExpertInfoVO vo) {
		return findExpDao.updateExpInfo(vo);
	}
	
	
}
