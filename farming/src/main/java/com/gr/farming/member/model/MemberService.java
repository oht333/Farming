package com.gr.farming.member.model;

import java.util.List;

public interface MemberService {
	//아이디 중복확인시 필요한 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재함
	public static final int NON_EXIST_ID=2;  //해당 아이디가 존재하지 않음-사용가능
	
	//로그인 처리시 필요한 상수
	public static final int LOGIN_OK=1;  //로그인 성공
	public static final int DISAGREE_PWD=2; //비번 불일치
	int USERID_NONE=3; //아이디 존재하지 않음

	public int insert(MemberVO vo);
	public int duplicatedId(String email);
	public int loginCheck(String email, String pwd);
	public MemberVO selectByEmail(String email);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String email);
	public List<MemberVO> selectAll();
}
