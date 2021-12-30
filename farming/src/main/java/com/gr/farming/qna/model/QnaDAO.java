package com.gr.farming.qna.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;

@Mapper
public interface QnaDAO {
	public int insertQna(QnaVO vo);
	public List<QnaVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
}
