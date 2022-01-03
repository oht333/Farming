package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO;

public interface KnowHowService {
	public List<KnowHowVO> selectKnowhowAll();
	public int insertKnowhow(KnowHowVO vo);
	int selectTotalRecord(SearchVO searchVo);
	public KnowHowVO selectByNo(int no);
	public int updateKnowhow(KnowHowVO vo);
	public void deleteKnowhow(Map<String, String> map);
}
