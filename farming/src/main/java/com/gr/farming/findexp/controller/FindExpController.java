package com.gr.farming.findexp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/findExp")
public class FindExpController {
	private static final Logger logger
	=LoggerFactory.getLogger(FindExpController.class);
	
	@RequestMapping("/findExpDetail")
	public String findExpDetail() {
		logger.info("전문가찾기 글 상세");
		return "findExp/findExpDetail";
	}
	
	@RequestMapping("/findExpList")
	public String findExpList() {
		logger.info("전문가찾기 글 목록 조회");
		
		
		return "findExp/findExpList";
	}
}
