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

import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.oauth.model.OAuthService;

@Controller
@RequestMapping("/login")
public class OAuthController {
		
	private OAuthService service;
	
	private MemberService mservice;
	
	@Autowired
	public OAuthController(OAuthService service, MemberService mservice) {
		this.service = service;
		this.mservice = mservice;
	}

	@ResponseBody
	@RequestMapping("/")
	public String kdkdoCallback() {
		return "/kakaoInfo";
	}
	
	
	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam("code") String code, HttpSession session, Model model) {
		System.out.println("code : "+code);
		String access_Token = service.getKakaoAccessToken(code);
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		System.out.println("컨트롤러 출력"+userInfo.get("nickname")+userInfo.get("email")+userInfo.get("profile_image"));
		
		MemberVO vo = new MemberVO();
		vo.setName((String)userInfo.get("nickname"));
		vo.setEmail((String)userInfo.get("email"));
		System.out.println("vo = "+vo);
		
		String msg = "로그인 실패", url = "/login/login";
		int result = mservice.duplicatedId(vo.getEmail());
		System.out.println("result = "+result);
		if(result == 1) {
			System.out.println("회원");
			msg = "로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("비회원");
			vo.setPwd("11");
			int cnt = mservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "로그인 성공";
				url = "/index";
			}
		}
		
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());		
		session.setAttribute("token", access_Token);
		
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
			msg = "로그인 성공";
			url = "/index";
		} else if(result == 2){
			System.out.println("비회원");
			vo.setPwd("11");
			int cnt = mservice.insert(vo);
			if(cnt > 0) {
				System.out.println("회원가입 성공");
				msg = "로그인 성공";
				url = "/index";
			}
		}
		
		session.setAttribute("name", vo.getName());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("pwd", vo.getPwd());
		session.setAttribute("token", accessToken);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
}
