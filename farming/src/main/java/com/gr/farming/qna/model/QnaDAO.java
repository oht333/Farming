package com.gr.farming.qna.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;

@Mapper
public interface QnaDAO {
	public int insert(QnaVO vo);
	public List<QnaVO> select(int no);
	int selectTotalRecord(SearchVO searchVo);
	public QnaVO selectByNo(int no);
	public int updateQna(QnaVO vo);
	public void deleteQna(Map<String, String> map);
	int updateSortNo(QnaVO vo);
	int reply(QnaVO vo);
}


