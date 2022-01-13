package com.gr.farming.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {
	public AdminVO selectByEmail(String email);
	public String selectPwd(String email);
}
