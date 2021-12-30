package com.gr.farming.qna.model;

import java.util.List;

import com.gr.farming.common.SearchVO;

public interface QnaService {
	public int insertQna(QnaVO vo);
	public List<QnaVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
}
