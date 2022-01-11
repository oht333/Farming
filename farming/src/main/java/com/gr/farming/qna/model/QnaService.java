package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

public interface QnaService {
	public int insert(QnaVO vo);
//	public List<QnaVO> select(int no);
	public List<QnaVO> select(SearchVO2 searchVo);
	int selectTotalRecord(SearchVO2 searchVo);
	public QnaVO selectByNo(int no);
	public int updateQna(QnaVO vo);
	public void deleteQna(Map<String, String> map);
	int reply(QnaVO vo);
}
