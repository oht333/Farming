package com.gr.farming.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	public int insertMember(MemberVO vo);
	public int duplicateId(String email);
	public String selectPwd(String email);
	public MemberVO selectByEmail(String email);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String email);

}
