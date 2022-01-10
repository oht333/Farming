package com.gr.farming.findExp.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldVO;

@Mapper
public interface FindExpDAO {

	int insertExpInfo(ExpertInfoVO vo);
	ExpertInfoVO selectExpInfo(int expertNo);
	ExpertVO selectByExperNo(int expertNo);
	List<Map<String, Object>> selectField(int expertNo);
	int updateIntro(ExpertInfoVO vo);
	int updateDetailInfo(ExpertInfoVO vo);
	int updateExpInfo(ExpertInfoVO vo);
}
