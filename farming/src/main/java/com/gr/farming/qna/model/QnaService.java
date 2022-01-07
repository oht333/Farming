package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

import com.gr.farming.common.SearchVO;

public interface QnaService {
	public int insert(QnaVO vo);
//	public List<QnaVO> select(int no);
	public List<QnaVO> select(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public QnaVO selectByNo(int no);
	public int updateQna(QnaVO vo);
	public void deleteQna(Map<String, String> map);
	int reply(QnaVO vo);
}
