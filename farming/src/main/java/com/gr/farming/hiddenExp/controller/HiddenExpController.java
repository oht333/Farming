package com.gr.farming.hiddenExp.controller;

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

import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.common.SearchVO;
import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.hiddenExp.model.HiddenExpService;

@Controller
@RequestMapping("/hiddenExp")
public class HiddenExpController {

	private static final Logger logger 
		= LoggerFactory.getLogger(HiddenExpController.class);
	
	private final HiddenExpService HEService;
	private final ExpertService expService;

	@Autowired
	public HiddenExpController(HiddenExpService hEService, ExpertService expService) {
		this.HEService = hEService;
		this.expService = expService;
	}

	@RequestMapping("/findByMap")
	public void findByMap() {
		
		logger.info("지도로 찾기 화면 보여주기");
		
	}
	
	
	@RequestMapping("/hiddenExpList")
	public String hiddenExpList(@RequestParam(defaultValue="") String keyword,
			 Model model) {
		
		if(keyword==null || keyword.isEmpty() ) {
			keyword = "서울";
		}
		
		logger.info("리스트 조회, 파라미터 keyword={}", keyword);
		
		List<ExpertVO> expList=HEService.selectByAddress(keyword);
		logger.info("검색 조회 결과, expList.size={}", expList.size());
		logger.info("검색 조회 결과, expList={}", expList);
		
		model.addAttribute("expList", expList);
		
		return "/hiddenExp/hiddenExpList";
	}

}
