package com.gr.farming.hiddenExp.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.farming.expert.model.ExpertVO;

@Service
public class HiddenExpServiceImpl implements HiddenExpService{

	private final HiddenExpDAO hiddenExpDao;
	
	@Autowired
	public HiddenExpServiceImpl(HiddenExpDAO hiddenExpDao) {
		this.hiddenExpDao = hiddenExpDao;
	}

	@Override
	public List<ExpertVO> selectByAddress(String keyword) {
		return hiddenExpDao.selectByAddress(keyword);
	}

}
