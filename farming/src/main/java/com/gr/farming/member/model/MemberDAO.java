package com.gr.farming.member.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;


@Mapper
public interface MemberDAO {
	public int insert(MemberVO vo);
	public int delete(MemberVO vo);
	public int duplicatedId(String email);
	public String selectPwd(String email);
	public MemberVO selectByEmail(String email);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String email);
	public List<MemberVO> selectAll(SearchVO searchVo);
	public int updatePwd(String email, String pwd);
	public MemberVO selectByNo(int memberNo);
	public int totalMember();
	public int deleteMember(int memberNo); 
	public int selectTotalRecord(SearchVO vo);
}
