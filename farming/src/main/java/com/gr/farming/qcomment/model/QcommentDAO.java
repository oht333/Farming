package com.gr.farming.qcomment.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QcommentDAO {
	public List<QcommentVO> list(int qnaNo);
	public int write(QcommentVO vo);
	public int update(QcommentVO vo);
	public int delete(int no);
	
}
