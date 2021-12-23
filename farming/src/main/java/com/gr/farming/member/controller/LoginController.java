package com.gr.farming.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.farming.member.model.MemberService;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger
	= LoggerFactory.getLogger(LoginController.class);
	
	private final MemberService service;

	@Autowired
	public LoginController(MemberService service) {
		this.service = service;
	}
	
	@GetMapping("/login")
	public void login() {
		logger.info("로그인 화면");
	}
}
