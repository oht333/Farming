package com.gr.farming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.farming.member.model.MemberService;

@Controller
public class IndexController {

	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/kakaoInfo")
	public String kakaoInfo() {
		return "kakaoInfo";
	}
	
	
}
