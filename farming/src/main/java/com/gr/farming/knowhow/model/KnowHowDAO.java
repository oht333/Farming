package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;
import com.gr.farming.qna.model.QnaVO;

@Mapper
public interface KnowHowDAO {
	public List<KnowHowVO> selectKnowhowAll();
	public int insertKnowhow(KnowHowVO vo);
	int selectTotalRecord(SearchVO searchVo);
	public KnowHowVO selectByNo(int no);
	public int updateKnowhow(KnowHowVO vo);
	public void deleteKnowhow(Map<String, String> map);
}
