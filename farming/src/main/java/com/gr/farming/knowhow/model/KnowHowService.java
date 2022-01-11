package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO;

public interface KnowHowService {
	public List<KnowHowVO> selectKnowhowAll(SearchVO3 searchVo);
	public int insertKnowhow(KnowHowVO vo);
	int selectTotalRecord(SearchVO3 searchVo);
	
	public KnowHowVO selectByNo(int knowhowNo);
	public int updateReadCount(int knowhowNo);
	public int updateKnowhow(KnowHowVO vo);
	public int deleteKnowhow(int knowhowNo);
	/* public int deleteKnowhow(Map<String, String> map); */
	int reply(KnowHowVO vo);
}
