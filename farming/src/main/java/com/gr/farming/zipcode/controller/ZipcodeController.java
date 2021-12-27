package com.gr.farming.zipcode.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.zipcode.model.ZipcodeService;
import com.gr.farming.zipcode.model.ZipcodeVO;

@Controller
@RequestMapping("/zipcode")
public class ZipcodeController {
	private static final Logger logger
		=LoggerFactory.getLogger(ZipcodeController.class);
	
	private final ZipcodeService zipcodeService;
	
	@Autowired
	public ZipcodeController(ZipcodeService zipcodeService) {
		this.zipcodeService = zipcodeService;
	}

	@RequestMapping("/zipcode")
	public String zipcode(@RequestParam(required = false) String dong,
			ModelMap model) {
		logger.info("우편번호 찾기, 파라미터 dong={}", dong);
		
		List<ZipcodeVO> list=null;
		if(dong!=null && !dong.isEmpty()) {
			list=zipcodeService.selectZipcode(dong);
			logger.info("우편번호 조회 결과 list.size={}", list.size());
		}
		
		model.addAttribute("list", list);
		
		return "zipcode/zipcode";
	}
	
	
}




