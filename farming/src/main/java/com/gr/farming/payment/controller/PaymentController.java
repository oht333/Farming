package com.gr.farming.payment.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.order.model.OrderService;
import com.gr.farming.order.model.OrderVO;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	private MemberService mservice;
	private OrderService oservice;
	
	@Autowired
	public PaymentController(MemberService mservice, OrderService oservice) {
		this.mservice = mservice;
		this.oservice = oservice;
	}

	@RequestMapping("/paymentDetail")
	public String paymentDetail(HttpSession session, Model model) {
		logger.info("결제디테일");
		String email = (String) session.getAttribute("email");
		
		MemberVO mVo = mservice.selectByEmail(email);
		model.addAttribute("mVo",mVo);
		return "payment/paymentDetail";
	}
	
	@ResponseBody
	@RequestMapping("/complete")
	public int complete(@ModelAttribute OrderVO vo) {
		logger.info("결제처리 vo = {}",vo);
		vo.setExpertName("");
		vo.setServiceName("");
		vo.setServiceNo(0);
		int res = oservice.insert(vo);
		if(res > 0) {
			logger.info("성공");
		} else {
			logger.info("실패");
		}
		return res;
	}
}
