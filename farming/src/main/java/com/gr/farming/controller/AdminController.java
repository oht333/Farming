package com.gr.farming.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;
import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final CategoryService service;
	private final MemberService mem_service;
	private final ExpertService exp_service;
	
	@Autowired
	public AdminController(CategoryService service, MemberService mem_service, ExpertService exp_service) {
		this.service = service;
		this.mem_service = mem_service;
		this.exp_service = exp_service;
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
	
	@RequestMapping("/manage/mem_list")
	public String mem_list(Model model) {
		logger.info("회원 목록 페이지");
		
		List<MemberVO> mem_list = mem_service.selectAll();
		logger.info("회원 목록 페이지 mem_list.size={}", mem_list.size());
		
		model.addAttribute("mem_list", mem_list);
		return "admin/manage/mem_list";
	}
	
	@RequestMapping("/manage/dev_list")
	public String dev_list(Model model) {
		logger.info("전문가 목록 페이지");
		
		List<ExpertVO> dev_list = exp_service.selectAll();
		logger.info("전문가 목록 페이지 dev_list.size={}", dev_list.size());
		
		model.addAttribute("dev_list", dev_list);
		return "admin/manage/dev_list";
	}
	
}
