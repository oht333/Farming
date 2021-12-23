package com.gr.farming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
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
	@RequestMapping("/empty")
	public String empty() {
		
		return "admin/empty";
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
