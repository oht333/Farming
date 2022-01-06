package com.gr.farming.oauth.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.oauth.model.OAuthService;
import com.gr.farming.resume.model.ResumeService;

import ch.qos.logback.classic.Logger;

@Controller
@RequestMapping("/login")
public class OAuthController {
		
	private OAuthService service;
	
	private MemberService mservice;
	
	private ExpertService eservice;
	
	private ResumeService rservice;
	
	@Autowired
	public OAuthController(OAuthService service, MemberService mservice, ExpertService eservice, ResumeService rservice) {
		this.service = service;
		this.mservice = mservice;
		this.eservice = eservice;
		this.rservice = rservice;
	}
	
	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam("code") String code, HttpSession session, Model model) {
		System.out.println("code : "+code);
		String access_Token = service.getKakaoAccessToken(code);
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		System.out.println("컨트롤러 출력 : "+userInfo.get("nickname")+", "+userInfo.get("email")+", "+userInfo.get("img"));
		
		MemberVO vo = new MemberVO();
		vo.setName((String)userInfo.get("nickname"));
		vo.setEmail((String)userInfo.get("email"));
		
		String img = (String) userInfo.get("img");
		
		System.out.println("vo = "+vo);
		
		String msg = "로그인 실패", url = "/login/login";
		int result = mservice.duplicatedId(vo.getEmail());
		System.out.println("result = "+result);
		if(result == 1) {
			System.out.println("회원");
			msg = "카카오톡 로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("비회원");
			vo.setPwd("11");
			int cnt = mservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "카카오톡 로그인 성공";
				url = "/member/addInfo";
			}
		}
		session.setAttribute("memNo", vo.getMemberNo());
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());	
		session.setAttribute("user", "사용자");
		session.setAttribute("token", access_Token);
		session.setAttribute("img", img);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/facebook")
	public String getFacebookSignIn(ModelMap model, String code, HttpSession session) throws Exception {
	    //logger.debug("facebookAccessToken / code : "+code);

	    String accessToken = service.requesFaceBooktAccesToken(code);
	    HashMap<String, Object> userInfo = service.facebookUserDataLoadAndSave(accessToken);
	    System.out.println("name : "+userInfo.get("name"));
	    System.out.println("email : "+userInfo.get("email"));
	    
	    MemberVO vo = new MemberVO();
	    vo.setName((String)userInfo.get("name"));
	    vo.setEmail((String)userInfo.get("email"));
	    
	    String msg = "로그인 실패", url = "/login/login";
		int result = mservice.duplicatedId(vo.getEmail());
		System.out.println("result = "+result);
		if(result == 1) {
			System.out.println("회원");
			msg = "페이스북 로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("비회원");
			vo.setPwd("11");
			int cnt = mservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "페이스북 로그인 성공";
				url = "/member/addInfo";
			}
		}
		session.setAttribute("memNo", vo.getMemberNo());
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());
		session.setAttribute("user", "사용자");
		session.setAttribute("token", accessToken);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/expkakao")
	public String expKakaoLogin(@RequestParam("code") String code, HttpSession session, Model model) {
		System.out.println("code : "+code);
		String access_Token = service.expGetKakaoAccessToken(code);
		HashMap<String, Object> userInfo = service.expGetUserInfo(access_Token);
		System.out.println("컨트롤러 출력"+userInfo.get("nickname")+userInfo.get("email")+userInfo.get("profile_image"));
		
		ExpertVO vo = new ExpertVO();
		vo.setName((String)userInfo.get("nickname"));
		vo.setEmail((String)userInfo.get("email"));
		
		String img = (String) userInfo.get("img");
		System.out.println("vo = "+vo);
		
		String msg = "로그인 실패", url = "/login/expLogin";
		int result = eservice.duplicatedId(vo.getEmail());
		System.out.println("result = "+result);
		if(result == 1) {
			System.out.println("전문가 회원");
			msg = "전문가 카카오톡 로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("전문가 비회원");
			vo.setPwd("11");
			int cnt = eservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "전문가 카카오톡 로그인 성공";
				url = "/expert/addExp/addInfo";
			}
		}
		ExpertVO vo2 = eservice.selectByEmail(vo.getEmail());
		vo.setExpertNo(vo2.getExpertNo());
		String main = eservice.selectMain(vo.getExpertNo());
		String career = rservice.selectCareer(vo.getExpertNo());
		
		if(career != null && !career.isEmpty()) {
			session.setAttribute("career", career);			
		} else {
			System.out.println("추가정보x");
		}
		session.setAttribute("expNo", vo.getExpertNo());
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());	
		session.setAttribute("user", "전문가");
		session.setAttribute("token", access_Token);
		session.setAttribute("img", img);
		session.setAttribute("main", main);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/expfacebook")
	public String expGetFacebookSignIn(ModelMap model, String code, HttpSession session) throws Exception {

	    String accessToken = service.expRequesFaceBooktAccesToken(code);
	    HashMap<String, Object> userInfo = service.expFacebookUserDataLoadAndSave(accessToken);
	    System.out.println("name : "+userInfo.get("name"));
	    System.out.println("email : "+userInfo.get("email"));
	    
	    ExpertVO vo = new ExpertVO();
	    vo.setName((String)userInfo.get("name"));
	    vo.setEmail((String)userInfo.get("email"));
	    
	    String msg = "로그인 실패", url = "/login/expLogin";
		int result = eservice.duplicatedId(vo.getEmail());
		System.out.println("result = "+result);
		if(result == 1) {
			System.out.println("회원");
			msg = "전문가 페이스북 로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("전문가 비회원");
			vo.setPwd("11");
			int cnt = eservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "전문가 페이스북 로그인 성공";
				url = "/expert/addExp/addInfo";
			}
		}
		ExpertVO vo2 = eservice.selectByEmail(vo.getEmail());
		vo.setExpertNo(vo2.getExpertNo());
		String main = eservice.selectMain(vo.getExpertNo());
		String career = rservice.selectCareer(vo.getExpertNo());
		
		if(career != null && !career.isEmpty()) {
			session.setAttribute("career", career);			
		} else {
			System.out.println("추가정보x");
		}
		
		session.setAttribute("expNo", vo.getExpertNo());
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());
		session.setAttribute("user", "전문가");
		session.setAttribute("token", accessToken);
		session.setAttribute("main", main);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
