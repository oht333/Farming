package com.gr.farming.expert.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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
import com.gr.farming.findExp.model.ExpertInfoVO;
import com.gr.farming.findExp.model.FindExpService;
import com.gr.farming.oauth.model.OAuthService;
import com.gr.farming.resume.model.ResumeService;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	
	private final ExpertService service;
	private final CategoryService c_service;
	private final OAuthService o_service;
	private final FieldService f_service;
	private final ResumeService r_service;
	private final FindExpService fe_service;
	
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
	private static final Logger logger
	=LoggerFactory.getLogger(ExpertController.class);

	@Autowired
	public ExpertController(ExpertService service, CategoryService c_service, OAuthService o_service,
			FieldService f_service, ResumeService r_service, FindExpService fe_service) {
		super();
		this.service = service;
		this.c_service = c_service;
		this.o_service = o_service;
		this.f_service = f_service;
		this.r_service = r_service;
		this.fe_service = fe_service;
	}

	@RequestMapping("/agreement")
	public String agreement() {
		logger.info("약관페이지");
		return "expert/agreement";
	}
	
	@RequestMapping("/mypage/main")
	public String main() {
		logger.info("마이페이지");
		return "expert/mypage/main";
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
					msg = "분야 등록 실패";
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
	
	//
	@RequestMapping("/addExp/addInfo")
	public String addInfo1(HttpSession session) {
		logger.info("전문가 추가정보 입력페이지1");
		String email = (String) session.getAttribute("email");
		String name = (String) session.getAttribute("neme");
		String img = (String) session.getAttribute("img");
		return "expert/addExp/addInfo";
	}
	
	@RequestMapping("/addExp/post")
	public String update_addExp(@ModelAttribute ExpertVO vo) {
		logger.info("주소, 비밀번호 업데이트 처리페이지 vo = {}",vo);
		int cnt = service.updateExpert(vo);
		if(cnt > 0) {
			logger.info("업데이트 성공");
		} else {
			logger.info("실패");
		}
		return "redirect:/expert/addExp/addInfo2";
	}
	
	@RequestMapping("/addExp/addInfo2")
	public String addInfo2() {
		logger.info("전문가 추가정보 입력페이지2");
		
		return "expert/addExp/addInfo2";
	}
	
	@RequestMapping("/addExp/addInfo3")
	public String addInfo3_get(@RequestParam(value="main", required = false) String main, Model model) {
		logger.info("전문가 추가정보 입력페이지3 main = {}", main);
		
		List<CategoryVO> list = c_service.selectByMain(main);
		model.addAttribute("main", main);
		model.addAttribute("clist", list);
		return "expert/addExp/addInfo3";
	}
	
	@RequestMapping("addExp/post2")
	public String addInfo3_post(HttpSession session, @RequestParam String main, String[] detail, Model model) {
		int expNo = (int) session.getAttribute("expNo");
		logger.info("전문가 추가정보 등록처리 페이지 expNo = {}",expNo);
		
		int[] arr = new int[detail.length];
		FieldVO f_vo = new FieldVO();
		String msg = "추가정보 등록실패", url = "/expert/addExp/addInfo2";
		for(int i = 0; i < detail.length; i++) {
			logger.info("전문가 추가정보 등록처리 페이지 detail={}",detail[i]);
			arr[i] = c_service.selectByDetail(detail[i]);
			
			if(arr[i] > 0) {
				f_vo.setCategoryNo(arr[i]);
				f_vo.setExpertNo(expNo);
				int res = f_service.insert(f_vo);
				if(res > 0) {
					msg = "추가정보 등록";
					url = "/index";
				} else {
					msg = "추가정보 등록실패";
				}
			} else {
				msg = "분야 검색실패";				
			}
			
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
				
		return "common/message";
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
	}

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
		vo.setEmail((String) session.getAttribute("email"));
		vo.setName((String) session.getAttribute("name"));
		vo.setPwd(pwdEncoder.encode(vo.getPwd()));
		
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
		
		String msg="실패", url="/expert/mypage/checkpwd?email="+vo.getEmail();
		if(chk) {
				msg="확인되었습니다.";
				url="/expert/mypage/profile";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
			
		return "common/message";


	}
	
	// 전문가 탈퇴
	@GetMapping("/mypage/out")
	public void out_get() {
		logger.info("전문가 탈퇴 화면");
	}
	
	@PostMapping("/mypage/out")
	public String out_post(@ModelAttribute ExpertVO vo, HttpSession session,
			HttpServletResponse response, Model model) {
		String pwd = (String) session.getAttribute("pwd");
		
		String msg="비밀번호 체크 실패", url="/expert/mypage/out";
		if(pwdEncoder.matches(vo.getPwd(), pwd)) {
			vo.setEmail(vo.getEmail());
			vo.setPwd(pwd);
			int cnt = service.delete(vo);
			logger.info("cnt : {}",cnt);
			if(cnt>0) {
				msg="탈퇴되었습니다.";
				url="/index";
				session.invalidate();
			}else {
				msg="회원탈퇴 처리 실패";
			}
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	//전문가 홍보를 위한 추가정보 입력페이지
	@RequestMapping("/addExp/addExp")
	public String addExp1(HttpSession session) {
		int expNo = (int) session.getAttribute("expNo");
		logger.info("추가정보입력페이지 expNo={}",expNo);
		
		String main = service.selectMain(expNo);
		int categoryNo = service.selectCategory(expNo);
		logger.info("main = {}, category = {}", main, categoryNo);
		
		return "expert/addExp/addExp";
	}
	
	@RequestMapping("/addExp/addExpPost")
	public String addExp2(@ModelAttribute ExpertInfoVO infoVo, Model model, HttpSession session) {
		if(infoVo.getLicense() == null && infoVo.getLicense().isEmpty()) {
			infoVo.setLicense("0");
		}
		int categoryNo = service.selectCategory(infoVo.getExpertNo());
		infoVo.setCategoryNo(categoryNo);
		logger.info("추가정보입력처리페이지 rVo = {}",infoVo);			
		int cnt = fe_service.insertExpInfo(infoVo);
		String msg = "추가정보 등록 실패", url = "/expert/addExp/addExp";
		if(cnt > 0) {
			msg = "추가정보 등록";
			url = "/index";
		}
		
		session.setAttribute("career", infoVo.getCareer());
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
