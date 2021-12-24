package com.gr.farming.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	private final MemberDAO dao;
	
	@Autowired 
	public MemberServiceImpl(MemberDAO dao) {
		this.dao = dao; 
	}
	
}
