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
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.resume.model.ResumeService;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger
		=LoggerFactory.getLogger(LoginController.class);
	
	private final MemberService memberService;
	private final ExpertService expertService;
	private final ResumeService resumeService;
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
	@Autowired
	public LoginController(MemberService memberService, ExpertService expertService, ResumeService resumeService) {		
		this.memberService = memberService;
		this.expertService = expertService;
		this.resumeService = resumeService;
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
			HttpServletResponse response, Model model) {
		
		int result = memberService.loginCheck(mVo.getEmail(), mVo.getPwd());
		String msg="로그인 처리 실패!", url="/login/login";
		if(result == memberService.USERID_NONE) {
			msg="회원이 아닙니다.";
		} else if(result == memberService.LOGIN_OK){
			MemberVO memVo = memberService.selectByEmail(mVo.getEmail());
			//[1] 세션에 아이디 저장
			HttpSession session=request.getSession();
			session.setAttribute("email", memVo.getEmail());
			session.setAttribute("name", memVo.getName());
			session.setAttribute("pwd", memVo.getPwd());
			session.setAttribute("memNo", memVo.getMemberNo());
			session.setAttribute("userImg", memVo.getFileName());
			session.setAttribute("user", "사용자");
			session.setAttribute("test", "test@test");

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
		} else if(result == memberService.DISAGREE_PWD) {
			msg = "패스워드를 확인하세요";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
		
				
	@RequestMapping(value="/expLogin", method = RequestMethod.POST)
	public String expLogin_post(@ModelAttribute ExpertVO eVo, 
			@RequestParam(required = false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		int result = expertService.loginCheck(eVo.getEmail(), eVo.getPwd());
		
		String msg="로그인 처리 실패!", url="/login/expLogin";
		if(result == expertService.USERID_NONE) {
			msg="회원이 아닙니다.";
		} else if(result == expertService.LOGIN_OK) {
			ExpertVO expVo=expertService.selectByEmail(eVo.getEmail());
			String main = expertService.selectMain(expVo.getExpertNo());
			String career = resumeService.selectCareer(expVo.getExpertNo());
			
			HttpSession session=request.getSession();

			if(career != null && !career.isEmpty()) {
				session.setAttribute("career", career);			
			} else {
				System.out.println("추가정보x");
			}
			
			//[1] 세션에 아이디 저장
			session.setAttribute("email", expVo.getEmail());
			session.setAttribute("name", expVo.getName());
			session.setAttribute("pwd", expVo.getPwd());
			session.setAttribute("expNo", expVo.getExpertNo());
			session.setAttribute("userImg", expVo.getFileName());
			session.setAttribute("user", "전문가");
			session.setAttribute("main", main);
			
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
		
		} else if(result == expertService.DISAGREE_PWD) {
			msg = "패스워드를 확인하세요";
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



