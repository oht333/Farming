package com.gr.farming.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final CategoryService service;
	
	@Autowired
	public AdminController(CategoryService service) {
		this.service = service;
	}
	
	private static final Logger logger
	=LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping("/main")
	public String main() {
		
		return "admin/main";
	}
	@RequestMapping("/chart")
	public String chart() {
		
		return "admin/chart";
	}
	@RequestMapping("/morrisChart")
	public String morris_chart() {
		
		return "admin/morrisChart";
	}
	@RequestMapping("/uiElements")
	public String uiElements() {
		
		return "admin/uiElements";
	}
	
	
	@RequestMapping(value="/empty", method = RequestMethod.GET)
	public String empty_get() {
		logger.info("카테고리 등록");
		return "admin/empty";
	}
	
	@RequestMapping(value="/empty", method = RequestMethod.POST)
	public String empty_post(@ModelAttribute CategoryVO vo) {
		logger.info("카테고리 등록 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		logger.info("카테고리 등록 처리결과 cnt={}",cnt);
		return "redirect:/admin/list";
	}
	
	@RequestMapping("/list")
	public String list() {
		
		return "admin/list";
	}
	
	
	@RequestMapping("/form")
	public String form() {
		
		return "admin/form";
	}
	@RequestMapping("/table")
	public String table() {
		
		return "admin/table";
	}
	@RequestMapping("/tabPanel")
	public String tabPanel() {
		
		return "admin/tabPanel";
	}
	
}
