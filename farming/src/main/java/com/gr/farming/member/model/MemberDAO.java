package com.gr.farming.member.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.expert.model.ExpertVO;

@Mapper
public interface MemberDAO {
	public int insert(MemberVO vo);
	public int delete(MemberVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public MemberVO selectByEmail(String email);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String email);
	public List<MemberVO> selectAll(SearchVO5 searchVo);
	public int updatePwd(String email, String pwd);
	public MemberVO selectByNo(int memberNo);
	int totalMember(SearchVO5 searchVo);
}
