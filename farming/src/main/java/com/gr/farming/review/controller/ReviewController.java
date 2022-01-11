package com.gr.farming.review.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.review.model.ReviewService;
import com.gr.farming.review.model.ReviewVO;

@Controller
public class ReviewController {

	public static final Logger logger
		= LoggerFactory.getLogger(ReviewController.class);
	
	private final ReviewService reviewService;

	@Autowired
	public ReviewController(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	@RequestMapping("/reviewList")
	public String reviewList(@RequestParam int expertNo,
			Model model) {
		
		List<ReviewVO> reviewList=reviewService.selectReview(expertNo);
		logger.info("후기 조회 결과, list.size={}", reviewList.size());
		
		float avg=0.0f;
		if(reviewList.size()!=0) {
			avg=reviewService.selectReviewAvg(expertNo);
			logger.info("후기 별점 평균, avg={}", avg);
		}
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("avg", avg);
		
		return "review/reviewList";
	}
	
	@PostMapping("/reviewWrite")
	public String reviewWrite(@ModelAttribute ReviewVO vo) {
		
		logger.info("후기 등록 처리, vo={}", vo);
		int cnt=reviewService.insertReview(vo);
		if(cnt>0) {
			logger.info("후기 등록 성공");
		}else {
			logger.info("후기 등록 실패");
		}
		
		return "redirect:/findexp/expDetail?expertNo="+vo.getExpertNo();
	}
}
