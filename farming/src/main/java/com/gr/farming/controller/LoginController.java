package com.gr.farming.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger
		=LoggerFactory.getLogger(LoginController.class);
	
	private final MemberService memberService;
	private final ExpertService expertService;
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
	@Autowired
	public LoginController(MemberService memberService, ExpertService expertService) {		
		this.memberService = memberService;
		this.expertService = expertService;
	}
	
	@RequestMapping("/loginType")
	public String loginType() {
		
		return "login/loginType";
	}

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login_get() {
		logger.info("로그인 화면");	
		return "login/login";
	}
	@RequestMapping(value="/expLogin", method = RequestMethod.GET)
	public String expLogin_get() {
		logger.info("로그인 화면");	
		return "login/expLogin";
	}
	
	@RequestMapping("/findpwd")
	public String findPwd(@RequestParam String email) {
		logger.info("비밀번호 찾기");
		return "login/findpwd";
	}
	@RequestMapping("/expfindpwd")
	public String expfindPwd(@RequestParam String email) {
		logger.info("비밀번호 찾기");
		return "login/expfindpwd";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login_post(@ModelAttribute MemberVO mVo, 
			@RequestParam(required = false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		MemberVO memVo=memberService.selectByEmail(mVo.getEmail());
		boolean chk = pwdEncoder.matches(mVo.getPwd(), memVo.getPwd());
		logger.info("일반로그인 처리, 파라미터 vo={}, chkSave={}", memVo, chkSave);
		String msg="로그인 처리 실패!", url="/login/login";
		
		//int result=memberService.loginCheck(mVo.getEmail(), mVo.getPwd());	
		
		if(chk) {
			//MemberVO memVo=memberService.selectByEmail(mVo.getEmail());
			
			//[1] 세션에 아이디 저장
			HttpSession session=request.getSession();
			session.setAttribute("email", memVo.getEmail());
			session.setAttribute("name", memVo.getName());
			session.setAttribute("pwd", memVo.getPwd());
			session.setAttribute("memNo", memVo.getMemberNo());
			session.setAttribute("user", "사용자");

			//[2] 쿠키에 저장 - 아이디저장하기 체크된 경우만
			Cookie ck = new Cookie("mCk_email", memVo.getEmail());
			ck.setPath("/");
			if(chkSave != null) {  //체크된 경우
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);  //쿠키 제거
				response.addCookie(ck);				
			}
			
			msg=memVo.getName() + "님 로그인되었습니다.";
			url="/index";
		}
		/*
		 * else if(result==MemberService.DISAGREE_PWD) { msg="비밀번호가 일치하지 않습니다."; }else
		 * if(result==MemberService.USERID_NONE) { msg="해당 아이디가 존재하지 않습니다."; }
		 */
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";		
	}
	@RequestMapping(value="/expLogin", method = RequestMethod.POST)
	public String expLogin_post(@ModelAttribute ExpertVO eVo, 
			@RequestParam(required = false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		ExpertVO expVo=expertService.selectByEmail(eVo.getEmail());
		boolean chk = pwdEncoder.matches(eVo.getPwd(), expVo.getPwd());
		logger.info("전문가로그인 처리, 파라미터 eVo={}, chkSave={}", expVo, chkSave);
		String msg="로그인 처리 실패!", url="/login/expLogin";
		if(chk) {
			
			//[1] 세션에 아이디 저장
			HttpSession session=request.getSession();
			session.setAttribute("email", expVo.getEmail());
			session.setAttribute("name", expVo.getName());
			session.setAttribute("pwd", expVo.getPwd());
			session.setAttribute("expert", "전문가");
			
			//[2] 쿠키에 저장 - 아이디저장하기 체크된 경우만
			Cookie ck = new Cookie("eCk_email", expVo.getEmail());
			ck.setPath("/");
			if(chkSave != null) {  //체크된 경우
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);  //쿠키 제거
				response.addCookie(ck);				
			}
			
			msg=expVo.getName() + "님 로그인되었습니다.";
			url="/index";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리");
		
		session.invalidate();
		
		return "redirect:/index";
	}
	
}



