package com.gr.farming.member.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.oauth.model.OAuthService;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService service;
	private final OAuthService oservice;
	
	@Autowired
	public MemberController(MemberService service, OAuthService oservice) {
		this.service = service;
		this.oservice = oservice;
	}
	
	@RequestMapping("/agreement")
	public String agreement() {
		logger.info("약관페이지");
		return "member/agreement";
	}
	
	@RequestMapping("/memRegister")
	public String memRegister() {
		logger.info("회원가입 페이지");
		return "member/memRegister";
	}
	@RequestMapping("/mypage/main")
	public String main() {
		logger.info("마이페이지");
		return "member/mypage/main";
	}
	
//	회원가입처리
	@RequestMapping("/join")
	public String join(@ModelAttribute MemberVO vo, Model model) {
		logger.info("회원가입 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		logger.info("회원가입 처리 결과 cnt={}",cnt);
		
		String msg = "회원가입 실패", url = "/member/register";
		if(cnt > 0) {
			msg = "회원가입 처리되었습니다";
			url = "/index";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
//	카카오 로그인 or 회원가입
	@RequestMapping("kakaojoin")
	public String kakaoJoin() {
		StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://kauth.kakao.com/oauth/authorize?client_id=");
        loginUrl.append("1036628c40962a9f65fae188105a4731"); 
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:9091/farming/login/kakao"); 
        loginUrl.append("&response_type=code");
        
        return "redirect:"+loginUrl.toString();
	}


//	페이스북 로그인 or 회원가입
	@RequestMapping("facebookjoin")
	public String facebookjoin() {
		String facebookurl = oservice.getAuthorizationUrl();
        System.out.println("facebookurl : "+facebookurl);
        return "redirect:"+facebookurl;

	
//   회원 정보 수정
	@RequestMapping(value="/mypage/profile", method=RequestMethod.GET)
	public String edit_get(@RequestParam(defaultValue = "0") String email, 
			Model model) {
		
		if(email==null) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/member/mypage/main");
			return "common/message";
		}
		
		MemberVO vo = service.selectByEmail(email);
		
		model.addAttribute("vo",vo);
		
		return "member/mypage/profile";
	}
	
	@RequestMapping(value="/mypage/profile", method=RequestMethod.POST)
	public String edit_post(@ModelAttribute MemberVO vo, Model model) {
		logger.info("글수정 처리, 파라미터 vo={}", vo);
		
		String msg="글수정 실패", url="/member/mypage/main";
		if(service.checkPwd(vo)) {
			int cnt = service.updateMember(vo);
			if(cnt>0) {
				msg="글수정되었습니다.";
				url="/member/mypage/profile?email="+vo.getEmail();
			} 
		}else {
				msg="비밀번호가 일치하지 않습니다.";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
			
		return "common/message";

	}
}
