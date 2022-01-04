package com.gr.farming.hiddenExp.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.expert.model.ExpertVO;

@Mapper
public interface HiddenExpDAO {

	List<ExpertVO> selectByAddress(String keyword);
}
