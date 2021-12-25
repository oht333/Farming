package com.gr.farming.category.controller;

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

@Controller
@RequestMapping("/admin")
public class CategoryController {
	private final CategoryService service;
	
	@Autowired
	public CategoryController(CategoryService service) {
		this.service = service;
	}
	private static final Logger logger
	=LoggerFactory.getLogger(CategoryController.class);
	
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
	public String list(Model model) {
		logger.info("목록 페이지");
		
		List<CategoryVO> list = service.select();
		logger.info("목록 페이지 list.size={}",list.size());
		
		model.addAttribute("list", list);
		return "admin/list";
	}
	
	@RequestMapping(value="/cateUpdate", method = RequestMethod.GET)
	public String update_get(@RequestParam(defaultValue = "0") int categoryNo,
			Model model) {
		logger.info("수정 페이지 번호 no = {}",categoryNo);
		
		CategoryVO vo = service.selectByNo(categoryNo);
		logger.info("수정 페이지 상세조회 vo={}",vo);
		model.addAttribute("vo", vo);
		
		return "admin/cateUpdate";
	}
	
	@RequestMapping(value="/cateUpdate", method = RequestMethod.POST)
	public String update_post(@ModelAttribute CategoryVO vo) {
		logger.info("수정처리 파라미터 vo={}",vo);
		
		int cnt = service.update(vo);
		logger.info("수정처리 결과 cnt={}",cnt);
		
		return "redirect:/admin/list";
	}
}
