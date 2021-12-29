package com.gr.farming.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger
		=LoggerFactory.getLogger(LoginController.class);
	
	private final MemberService memberService;
		
	@Autowired
	public LoginController(MemberService memberService) {		
		this.memberService = memberService;
	}

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login_get() {
		logger.info("로그인 화면");	
		return "login/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login_post(@ModelAttribute MemberVO vo, 
			@RequestParam(required = false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		logger.info("로그인 처리, 파라미터 vo={}, chkSave={}", vo, chkSave);
		
		String msg="로그인 처리 실패!", url="/login/login";
		int result=memberService.loginCheck(vo.getEmail(), vo.getPwd());		
		if(result==MemberService.LOGIN_OK) {
			MemberVO memVo=memberService.selectByEmail(vo.getEmail());
			
			//[1] 세션에 아이디 저장
			HttpSession session=request.getSession();
			session.setAttribute("email", vo.getEmail());
			session.setAttribute("name", memVo.getName());
			session.setAttribute("pwd", vo.getPwd());
			
			//[2] 쿠키에 저장 - 아이디저장하기 체크된 경우만
			Cookie ck = new Cookie("ck_email", memVo.getEmail());
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
		}else if(result==MemberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다.";			
		}else if(result==MemberService.USERID_NONE) {
			msg="해당 아이디가 존재하지 않습니다.";			
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



