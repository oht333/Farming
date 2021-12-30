package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO;

public interface QnaService {
	public int insertQna(QnaVO vo);
	public List<QnaVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	public QnaVO selectByNo(int no);
	public int updateQna(QnaVO vo);
	public void deleteQna(Map<String, String> map);
}
