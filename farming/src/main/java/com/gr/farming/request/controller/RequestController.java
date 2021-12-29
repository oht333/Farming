package com.gr.farming.request.controller;


import java.util.List;

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

import com.gr.farming.request.model.RequestDevelopVO;
import com.gr.farming.request.model.RequestQnaVO;
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

	@RequestMapping("/request")
	public void request() {
		logger.info("견적서요청 메인화면 보여주기");
	}
	
	@GetMapping("/develop/request1")
	public String request1_get(@RequestParam int categoryNo, Model model) {
		
		logger.info("견적서 작성 1 화면 보여주기, 파라미터 categoryNo={}", categoryNo);
		
		List<RequestQnaVO> list=requestService.selectByCategoryNo(categoryNo);
		logger.info("견적서 작성을 위한 문답 list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "request/develop/request1";
		
	}
	
	@PostMapping("/develop/request1")
	public String request1_post(@ModelAttribute RequestDevelopVO vo, Model model) {
		
		logger.info("견적서 작성 1 내용입력 처리");
		
		int cnt=requestService.insertRequestDevelop(vo);
		logger.info("견적서 처리 결과 cnt={}", cnt);
		
		String msg="견적서 보내기 실패", url="request/develop/request1";
		if(cnt>0) {
			msg="견적서 작성이 처리되었습니다.";
			url="/request/develop/request_success";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/develop/request_success")
	public String request_success() {
		logger.info("견적서 작성 완료 화면");
		return "request/develop/request_success";
	}
}
