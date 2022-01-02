package com.gr.farming.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	
	
	@RequestMapping("/paymentDetail")
	public String paymentDetail() {
		
		return "payment/paymentDetail";
	}
}
