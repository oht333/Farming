package com.gr.farming.review.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewDAO {

	List<ReviewVO> selectReview(int expertNo);
}
