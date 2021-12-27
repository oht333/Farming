package com.gr.farming.request.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sendRequest")
public class RequestController {

	private static final Logger logger
		= LoggerFactory.getLogger(RequestController.class);
	
	@RequestMapping("/request")
	public void request() {
		logger.info("견적서요청 메인화면 보여주기");
	}
	
	@GetMapping("/develop/request1")
	public void request1_get() {
		logger.info("견적서 작성 1 화면 보여주기");
	}
	
	@PostMapping("/develop/request1")
	public void request1_post(HttpSession session, Model model) {
		logger.info("견적서 작성 1 내용입력");
		
	}
	
}
