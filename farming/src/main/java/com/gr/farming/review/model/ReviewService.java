package com.gr.farming.review.model;

import java.util.List;

public interface ReviewService {

	List<ReviewVO> selectReview(int expertNo);
}
