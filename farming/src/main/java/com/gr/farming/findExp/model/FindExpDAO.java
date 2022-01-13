package com.gr.farming.findExp.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldDetailVO;

@Mapper
public interface FindExpDAO {

	int insertExpInfo(ExpertInfoVO vo);
	ExpertInfoVO selectExpInfo(int expertNo);
	ExpertVO selectByExperNo(int expertNo);
	List<FieldDetailVO> selectFieldDetail(int expertNo);
	int updateExpInfo(ExpertInfoVO vo);
}
