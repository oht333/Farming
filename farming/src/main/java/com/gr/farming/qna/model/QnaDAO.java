package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO2;

@Mapper
public interface QnaDAO {
	public int insert(QnaVO vo);
//	public List<QnaVO> select(int no);
	public List<QnaVO> select(SearchVO2 searchVo);
	int selectTotalRecord(SearchVO2 searchVo);
	public QnaVO selectByNo(int no);
	public int updateQna(QnaVO vo);
	public int deleteQna(int no);
	int updateSortNo(QnaVO vo);
	int reply(QnaVO vo);
}


