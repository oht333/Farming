package com.gr.farming.request.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.request.model.RequestDesignVO;
import com.gr.farming.request.model.RequestDevelopVO;
import com.gr.farming.request.model.RequestService;

@Controller
@RequestMapping("/request")
public class RequestController {

	private static final Logger logger
		= LoggerFactory.getLogger(RequestController.class);
	
	public final RequestService requestService;
	
	@Autowired
	public RequestController(RequestService requestService) {
		this.requestService = requestService;
	}

	/*
	 * @RequestMapping("/request") public void request(@RequestParam(required =
	 * false) int categoryNo, Model model ) {
	 * logger.info("견적서요청 메인화면 보여주기, 파라미터 categoryNo={}", categoryNo);
	 * 
	 * model.addAttribute("categoryNo",categoryNo); }
	 */
	@RequestMapping("/request")
	public void request( ) {
		
		logger.info("견적서 작성 메인화면 보여주기");

	}
	/*
	 * @GetMapping("/develop/request1") public String request1_get(@RequestParam int
	 * categoryNo, Model model) {
	 * 
	 * logger.info("견적서 작성 화면 보여주기, 파라미터 categoryNo={}", categoryNo);
	 * 
	 * List<RequestQnaVO> list=requestService.selectByCategoryNo(categoryNo);
	 * logger.info("견적서 작성을 위한 문답 list.size={}", list.size());
	 * 
	 * model.addAttribute("list", list); logger.info("list={}",list);
	 * 
	 * return "request/develop/request1";
	 * 
	 * }
	 */
	
	@GetMapping("/requestWrite/develop")
	public String requestDevelop() {
		
		logger.info("견적서 작성 페이지 - 개발");

		return "request/request_develop";
		
	}
	
	@GetMapping("/requestWrite/design")
	public String requestDesign() {
		
		logger.info("견적서 작성 페이지 - 디자인");	
		
		return "request/request_design";
	}
	
	@PostMapping("/requestWrite/develop")
	public String request1_post(@ModelAttribute RequestDevelopVO vo, 
			Model model) {
		
		logger.info("견적서 작성 내용입력 처리");
		
		int cnt=requestService.insertRequestDevelop(vo);
		logger.info("견적서 처리 결과 cnt={}", cnt);
		
		String msg="견적서 보내기 실패", url="request/request_develop";
		if(cnt>0) {
			msg="견적서 작성이 처리되었습니다.";
			url="/request/request_success";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@PostMapping("/requestWrite/design")
	public String requestDesign_post(@ModelAttribute RequestDesignVO vo, 
			Model model) {
		logger.info("견적서 작성 내용입력 처리, 파라미터 vo={}", vo);
		
		int cnt=requestService.insertRequestDesign(vo);
		logger.info("견적서 처리 결과 cnt={}", cnt);
		
		String msg="견적서 보내기 실패", url="request/request_design";
		if(cnt>0) {
			msg="견적서 작성이 처리되었습니다.";
			url="/request/request_success";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/request_success")
	public String request_success() {
		logger.info("견적서 작성 완료 화면");
		return "request/request_success";
	}
}
