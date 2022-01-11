package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;
import com.gr.farming.qna.model.QnaVO;

@Mapper
public interface KnowHowDAO {
	public List<KnowHowVO> selectKnowhowAll(SearchVO3 searchVo);
	public int insertKnowhow(KnowHowVO vo);
	int selectTotalRecord(SearchVO3 searchVo);
	
	public KnowHowVO selectByNo(int knowhowNo);
	public int updateReadCount(int knowhowNo);
	public int updateKnowhow(KnowHowVO vo);
	public int deleteKnowhow(int knowhowNo);
	/* public int deleteKnowhow(Map<String, String> map); */
	int updateSortNo(KnowHowVO vo);
	int reply(KnowHowVO vo);
}
