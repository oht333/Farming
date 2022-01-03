package com.gr.farming.findexp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/findexp")
public class FindexpController {
	private static final Logger logger
	=LoggerFactory.getLogger(FindexpController.class);
	
	@RequestMapping(value="/findexpWrite", method = RequestMethod.GET)
	public String findexpWrite() {
		logger.info("전문가찾기 글 등록");
		return "findexp/findexpWrite";
	}
	
	@RequestMapping("/findexpDetail")
	public String findexpDetail() {
		logger.info("전문가찾기 글 상세");
		return "findexp/findexpDetail";
	}
	
	@RequestMapping("/findexpList")
	public String findexpList() {
		logger.info("전문가찾기 글 목록 조회");
		
		
		return "findexp/findexpList";
	}
}
