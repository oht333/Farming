package com.gr.farming.qna.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QnaDAO {
	public int insertQna(QnaVO vo);
}
