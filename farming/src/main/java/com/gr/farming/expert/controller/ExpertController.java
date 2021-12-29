package com.gr.farming.expert.controller;

import java.util.ArrayList;
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
import com.gr.farming.field.model.FieldService;
import com.gr.farming.field.model.FieldVO;
import com.gr.farming.oauth.model.OAuthService;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	
	private final ExpertService service;
	private final CategoryService c_service;
	private final OAuthService o_service;
	private final FieldService f_service;
	
	private static final Logger logger
	=LoggerFactory.getLogger(ExpertController.class);

	@Autowired
	public ExpertController(ExpertService service, CategoryService c_service, OAuthService o_service, FieldService f_service) {
		this.service = service;
		this.c_service = c_service;
		this.o_service = o_service;
		this.f_service = f_service;
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
	public String memRegister3(@RequestParam String main, String[] detail, Model model) {
		logger.info("전문가회원가입페이지3 main={}",main);
		
		for (String dt : detail) {
			logger.info("전문가회원가입페이지3 detail={}",dt);
		}
		List<String> strList = new ArrayList<String>();
		for(int i = 0; i < detail.length; i++) {
			strList.add(detail[i]);
		}
		model.addAttribute("strList", strList);
		
		return "expert/expRegister3";
	}
	
	@RequestMapping("/join")
	public String join(@ModelAttribute ExpertVO vo, @RequestParam String[] str, Model model) {
		logger.info("회원가입 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		int expNo = vo.getExpertNo();
		logger.info("회원가입 처리 결과 cnt={}",cnt);
		int[] arr = new int[str.length];
		FieldVO f_vo = new FieldVO();
		String msg = "회원가입 실패", url = "/register";
		if(cnt > 0) {
			for(int i = 0; i < arr.length; i++) {
				arr[i] = c_service.selectByDetail(str[i]);
				f_vo.setCategoryNo(arr[i]);
				f_vo.setExpertNo(expNo);
				int res = f_service.insert(f_vo);
				if(res > 0) {
					msg = "회원가입 및 분야 등록 성공";
					url = "/login/expLogin";
				} else {
					msg = "회원가입만 처리되었습니다";
					url = "/login/expLogin";
				}
			}
			
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
	
//	카카오 로그인 or 회원가입
	@RequestMapping("expkakaojoin")
	public String kakaoJoin() {
		StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://kauth.kakao.com/oauth/authorize?client_id=");
        loginUrl.append("1036628c40962a9f65fae188105a4731"); 
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:9091/farming/login/expkakao"); 
        loginUrl.append("&response_type=code");
        
        return "redirect:"+loginUrl.toString();
	}


//	페이스북 로그인 or 회원가입
	@RequestMapping("expfacebookjoin")
	public String facebookjoin() {
		String facebookurl = o_service.getAuthorizationUrl();
        System.out.println("facebookurl : "+facebookurl);
        return "redirect:"+facebookurl;
	}
}
