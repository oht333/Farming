package com.gr.farming.findExp.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldDetailVO;
import com.gr.farming.field.model.FieldVO;

public interface FindExpService {

	int insertExpInfo(ExpertInfoVO vo);
	ExpertInfoVO selectExpInfo(int expertNo);
	ExpertVO selectByExperNo(int expertNo);
	List<FieldDetailVO> selectFieldDetail(int expertNo);
	int updateExpInfo(ExpertInfoVO vo);
}
