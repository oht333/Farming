package com.gr.farming.member.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	public int insert(MemberVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public MemberVO selectByEmail(String email);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String email);
	public List<MemberVO> selectAll();
}
