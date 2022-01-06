package com.gr.farming.resume.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResumeDAO {
	int insert(ResumeVO vo);
	String selectCareer(int expertNo);
}
