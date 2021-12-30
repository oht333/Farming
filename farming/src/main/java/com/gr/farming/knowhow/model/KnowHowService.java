package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO;

public interface KnowHowService {
	List<KnowHowVO> selectKnowhowAll();
	public int insertKnowhow(KnowHowVO vo);

}
