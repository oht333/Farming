package com.gr.farming.expert.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface ExpertDAO {
	public int insert(ExpertVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public ExpertVO selectByEmail(String email);
	public int delete(ExpertVO vo);
	public int updatePwd(String email, String pwd);

	public List<ExpertVO> selectAll();
	public int updateExpert(ExpertVO vo);
	
	public String selectMain(int expertNo);
	public int selectCategory(int expNo);

}
