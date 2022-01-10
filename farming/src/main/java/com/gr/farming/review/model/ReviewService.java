package com.gr.farming.review.model;

import java.util.List;
import java.util.Map;

public interface ReviewService {

	List<ReviewVO> selectReview(int expertNo);
	int insertReview(ReviewVO vo);
	float selectReviewAvg(int expertNo);
}
