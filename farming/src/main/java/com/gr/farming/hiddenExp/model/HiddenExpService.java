package com.gr.farming.hiddenExp.model;

import java.util.List;

import com.gr.farming.expert.model.ExpertVO;

public interface HiddenExpService {

	List<ExpertVO> selectByAddress(String keyword);
}
