package com.gr.farming.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;

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
	public void login_get() {
		logger.info("로그인 화면");
	}
	@PostMapping
	public String login_post(@ModelAttribute MemberVO vo, @RequestParam(required = false) String chkSave,
			HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("로그인 처리 vo={}",vo);
		
		String msg = "로그인 처리 실패", url = "/login/login";
		
		int result = service
	}
}
