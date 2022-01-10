package com.gr.farming.review.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewDAO {

	List<ReviewVO> selectReview(int expertNo);
	int insertReview(ReviewVO vo);
	float selectReviewAvg(int expertNo);
}
