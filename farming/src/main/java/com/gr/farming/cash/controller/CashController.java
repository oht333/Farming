package com.gr.farming.cash.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.farming.cash.model.CashService;
import com.gr.farming.cash.model.CashVO;
import com.gr.farming.category.controller.CategoryController;

@Controller
@RequestMapping("/cash")
public class CashController {
	private final CashService service;
	
	@Autowired
	public CashController(CashService service) {
		this.service = service;
	}
	private static final Logger logger
	=LoggerFactory.getLogger(CategoryController.class);
	
	
	@RequestMapping("/main")
	public String main() {
		logger.info("캐시페이지");
		return "cash/main";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		logger.info("목록 페이지");
		
		List<CashVO> list = service.selectAll();
		logger.info("목록 페이지 list.size={}",list.size());
		
		model.addAttribute("list", list);
		return "cash/list";
		
	}
	
	@GetMapping("/cash")
	public String cash_get() {
		logger.info("캐시 충전");
		return "cash/cash";
	}
	
	@PostMapping("/cash")
	public String cash_post(@ModelAttribute CashVO vo, HttpSession session) {
		vo.setMemberNo((int) session.getAttribute("memNo"));
		logger.info("캐시 충전 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		logger.info("캐시 충전 처리결과 cnt={}",cnt);
		return "redirect:/cash/list";
	}
}
