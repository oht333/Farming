package com.gr.farming.qna.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gr.farming.qna.model.QnaService;
import com.gr.farming.qna.model.QnaVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	private static final Logger logger
	=LoggerFactory.getLogger(QnaController.class);
	
	private final QnaService qnaService;
	
	
	@Autowired
	public QnaController(QnaService qnaService) {
		this.qnaService = qnaService;
		logger.info("생성자 주입");
	}

	@RequestMapping("/qnaMain")
	public String qnaMain() {
		return "qna/qnaMain";
	}
	
	@RequestMapping("/qnaGuest")
	public String qnaGuest() {
		return "qna/qnaGuest";
	}
	
	@RequestMapping("/qnaDeveloper")
	public String qnaDeveloper() {
		return "qna/qnaDeveloper";
	}
	
	@RequestMapping(value="/qnaWrite.do",method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "qna/qnaWrite";
	}
	
	@RequestMapping(value="/qnaWrite.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute QnaVO vo,
			HttpServletRequest request) {
		
		logger.info("글쓰기처리, 파라미터 vo={}",vo);
		
		int cnt=qnaService.insertQna(vo);
		logger.info("글쓰기결과, cnt={}",cnt);
		
		return "redirect:/qna/qnaList.do";
		
	}
	
}
