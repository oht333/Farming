package com.gr.farming.review.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewSeviceImpl implements ReviewService{

	private final ReviewDAO reviewDao;
	
	@Autowired
	public ReviewSeviceImpl(ReviewDAO reviewDao) {
		this.reviewDao = reviewDao;
	}

	@Override
	public List<ReviewVO> selectReview(int expertNo) {
		return reviewDao.selectReview(expertNo);
	}

	@Override
	public int insertReview(ReviewVO vo) {
		return reviewDao.insertReview(vo);
	}

	@Override
	public float selectReviewAvg(int expertNo) {
		return reviewDao.selectReviewAvg(expertNo);
	}

	
}
