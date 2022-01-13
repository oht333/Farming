package com.gr.farming.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.farming.category.model.CategoryService;


@Controller
@RequestMapping("/search")
public class SearchController {
	private final CategoryService service;
	
	@Autowired
	public SearchController(CategoryService service) {
		this.service = service;
	}
	
	private static final Logger logger
	=LoggerFactory.getLogger(SearchController.class);
	
	@RequestMapping("/main")
	public String main() {
		logger.info("검색페이지");
		return "search/main";
	}
	
	
}
