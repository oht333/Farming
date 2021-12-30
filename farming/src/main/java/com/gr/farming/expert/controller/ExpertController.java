package com.gr.farming.expert.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
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
        
        System.out.println("loginUrl : "+loginUrl.toString());
        return "redirect:"+loginUrl.toString();
	}


//	페이스북 로그인 or 회원가입
	@RequestMapping("expfacebookjoin")
	public String facebookjoin() {
		String facebookurl = o_service.expGetAuthorizationUrl();
        System.out.println("facebookurl : "+facebookurl);
        return "redirect:"+facebookurl;
	}
	

	@RequestMapping("/change")
	public String changePwd(@RequestParam String email, String pwd, Model model) {
		logger.info("이메일 인증 후 비밀번호 변경 처리 파라미터 email = {}, pwd = {}",email, pwd);
		
		int cnt = service.updatePwd(email, pwd);
		String msg = "비밀번호 변경 실패", url = "/login/expfindpwd";
		if(cnt > 0) {
			msg = "변경 성공";
			url = "/login/expLogin";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";

//  회원 정보 수정
	@GetMapping("/mypage/profile")
	public String edit_get(HttpSession session, Model model) {
		String email=(String) session.getAttribute("email");
		logger.info("회원정보 수정 화면, 파라미터 email={}", email);
		
		ExpertVO vo= service.selectByEmail(email);
		logger.info("회원수정 - 조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		return "expert/mypage/profile";
	}
	
	@PostMapping("/mypage/profile")
	public String edit_post(@ModelAttribute ExpertVO vo,
			HttpSession session, Model model) {
		String email=(String) session.getAttribute("email");
		vo.setEmail(email);
		String name=(String) session.getAttribute("name");
		vo.setName(name);
		logger.info("회원수정 처리, 파라미터 vo={}", vo);
		
		String msg="", url="/mypage/profile";
		
		int cnt=service.updateExpert(vo);
		logger.info("회원수정 결과, cnt={}", cnt);
		
		if(cnt>0) {
			msg="회원정보 수정되었습니다.";
			url="/expert/mypage/main";
		}else {
			msg="회원정보 수정 실패!";
		}		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
			
		return "common/message";

	}
	
//  회원 비번 확인
	@RequestMapping(value="/mypage/checkpwd", method=RequestMethod.GET)
	public String check_get(@RequestParam(defaultValue = "0") String email, 
			Model model) {
		
		if(email==null) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/expert/mypage/main");
			return "common/message";
		}
		
		ExpertVO vo = service.selectByEmail(email);
		
		model.addAttribute("vo",vo);
		
		return "expert/mypage/checkpwd";
	}
	
	@RequestMapping(value="/mypage/checkpwd", method=RequestMethod.POST)
	public String check_post(@ModelAttribute ExpertVO vo, Model model) {
		ExpertVO exVo=service.selectByEmail(vo.getEmail());
		boolean chk = pwdEncoder.matches(vo.getPwd(), exVo.getPwd());
		logger.info("비번 확인, 파라미터 vo={}", vo);
		
		String msg="실패", url="/expert/mypage/checkpwd";
		if(chk || service.checkPwd(vo)) {
				msg="확인되었습니다.";
				url="/expert/mypage/profile";
			
		}else {
				msg="비밀번호가 일치하지 않습니다.";
				url="/expert/mypage/checkpwd?email="+vo.getEmail();
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
			
		return "common/message";


	}
}
