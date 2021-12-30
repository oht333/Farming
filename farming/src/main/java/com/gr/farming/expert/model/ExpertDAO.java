package com.gr.farming.expert.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface ExpertDAO {
	public int insert(ExpertVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public ExpertVO selectByEmail(String email);
	public List<ExpertVO> selectAll();
}
