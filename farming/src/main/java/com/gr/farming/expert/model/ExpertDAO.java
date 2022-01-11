package com.gr.farming.expert.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;



@Mapper
public interface ExpertDAO {
	public int insert(ExpertVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public ExpertVO selectByEmail(String email);
	public int delete(ExpertVO vo);
	public int updatePwd(String email, String pwd);
	public int selectTotalRecord();
	public List<ExpertVO> selectAll(SearchVO searchVo);
	public int updateExpert(ExpertVO vo);
	public ExpertVO selectByNo(int expertNo);
	public String selectMain(int expertNo);
	public int selectCategory(int expNo);
	public int deleteExpert(int expertNo);
	public int selectTotalRecord(SearchVO vo);
}
