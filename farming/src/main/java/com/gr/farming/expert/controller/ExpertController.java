package com.gr.farming.expert.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;
import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	private final ExpertService service;
	private final CategoryService c_service;
	private static final Logger logger
	=LoggerFactory.getLogger(ExpertController.class);

	@Autowired
	public ExpertController(ExpertService service, CategoryService c_service) {
		this.service = service;
		this.c_service = c_service;
	}
	
	@RequestMapping("/agreement")
	public String agreement() {
		logger.info("약관페이지");
		return "expert/agreement";
	}
	
	@RequestMapping(value="/expRegister1", method = RequestMethod.GET)
	public String memRegister_get() {
		logger.info("전문가회원가입 페이지");
		return "expert/expRegister1";
	}
	
	
	@RequestMapping("/expRegister2")
	public String memRegister2(@RequestParam(value="main", required = false) String main, Model model) {
		logger.info("전문가회원가입 페이지2 main = {}",main);
		
		List<CategoryVO> list = c_service.selectByMain(main);
		model.addAttribute("main", main);
		model.addAttribute("clist", list);
		return "expert/expRegister2";
	}
	
	@RequestMapping("/expRegister3")
	public String memRegister3() {
		logger.info("전문가회원가입페이지3 main={}");
		
		return "expert/expRegister3";
	}
	
	@RequestMapping("/join")
	public String join(@ModelAttribute ExpertVO vo, Model model) {
		logger.info("회원가입 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		logger.info("회원가입 처리 결과 cnt={}",cnt);
		
		String msg = "회원가입 실패", url = "/register";
		if(cnt > 0) {
			msg = "회원가입 처리되었습니다";
			url = "/login/expLogin";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/checkemail")
	public String checkEmail(@RequestParam String email, Model model) {
		logger.info("중복체크페이지 email={}",email);
		int result = 0;
		
		if(email != null && !email.isEmpty()) {
			result = service.duplicatedId(email);
			logger.info("중복확인 결과 result={}",result);
		}
		
		model.addAttribute("result", result);
		model.addAttribute("EXIST_ID", service.EXIST_ID);
		model.addAttribute("NON_EXIST_ID", service.NON_EXIST_ID);
		
		return "member/checkemail";
	}
}
