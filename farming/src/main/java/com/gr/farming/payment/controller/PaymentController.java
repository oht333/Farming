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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.cash.model.CashService;
import com.gr.farming.cash.model.CashVO;
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
	private CashService cservice;
	
	@Autowired
	public PaymentController(MemberService mservice, OrderService oservice, CashService cservice) {
		this.mservice = mservice;
		this.oservice = oservice;
		this.cservice = cservice;
	}

	@RequestMapping("/paymentDetail")
	public String paymentDetail(HttpSession session, Model model) {
		logger.info("결제디테일");
		String email = (String) session.getAttribute("email");
		
		MemberVO mVo = mservice.selectByEmail(email);
		CashVO cVo = cservice.selectByMemNo(mVo.getMemberNo());
		
		model.addAttribute("cVo",cVo);
		model.addAttribute("mVo",mVo);
		return "payment/paymentDetail";
	}
	
	@ResponseBody
	@RequestMapping("/complete")
	public int complete(@ModelAttribute OrderVO vo, @RequestParam(value = "chk") String chk, @RequestParam(value = "pay", defaultValue = "0") int pay) {
		logger.info("결제처리 vo = {}",vo);
		logger.info("chk : {}, pay : {}",chk,pay);
		
		vo.setExpertNo(0);
		vo.setExpertName("");
		vo.setServiceName("");
		vo.setServiceNo(0);
		
		CashVO cVo = cservice.selectByMemNo(vo.getMemberNo());
		cVo.setCharge(-pay);
		cVo.setMemberNo(vo.getMemberNo());
		cVo.setMerchantUid(vo.getMerchantUid());
		
		int res = oservice.insert(vo);
		if(res > 0) {
			if(chk.equals("Y")) {
				res = cservice.insert(cVo);
				if(res > 0) {
					res = cservice.plusBal(cVo.getMemberNo());
				}
			}
			logger.info("성공");
		} else {
			logger.info("실패");
		}
		return res;
	}
	
	@ResponseBody
	@RequestMapping("/checkPay")
	public boolean checkPay(@RequestParam(value = "pay", defaultValue = "0") int pay, @RequestParam(value = "memNo", defaultValue = "0") int memNo) {
		logger.info("pay : {}",pay);
		CashVO vo = cservice.selectByMemNo(memNo);
		int dbPay = vo.getBalance();
		boolean res = false;
		if(pay > dbPay) {
			res = false;
		} else if(pay < dbPay) {
			res = true;
		}
		return res;
	}
	
	@ResponseBody
	@RequestMapping("/chk")
	public boolean chk(@RequestParam(value = "pay", defaultValue = "0") int pay, @RequestParam(value = "total", defaultValue = "0") int total, @RequestParam(value = "chk") String chk) {
		logger.info("pay : {}, total : {}, chk : {}",pay,total,chk);
		boolean res = false;
		if(chk.equals("Y")) {
			res = true;
		} else {
			res = false;
		}
		return res;
	}
}
