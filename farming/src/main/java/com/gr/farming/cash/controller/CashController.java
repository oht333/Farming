package com.gr.farming.cash.controller;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.cash.model.CashService;
import com.gr.farming.cash.model.CashVO;
import com.gr.farming.category.controller.CategoryController;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.order.model.OrderService;
import com.gr.farming.order.model.OrderVO;

@Controller
@RequestMapping("/cash")
public class CashController {
	private final MemberService mservice;
	private final OrderService oservice;
	private final CashService sservice;
	
	@Autowired
	public CashController(MemberService mservice, OrderService oservice, CashService sservice) {
		this.mservice = mservice;
		this.oservice = oservice;
		this.sservice = sservice;
	}
	private static final Logger logger
	=LoggerFactory.getLogger(CategoryController.class);
	
	
	@RequestMapping("/main")
	public String main() {
		logger.info("캐시페이지");
		return "cash/main";
	}
	
	
	@GetMapping("/cash")
	public String cash_get(HttpSession session, Model model) {
		logger.info("캐시 충전");
		String email = (String) session.getAttribute("email");
		MemberVO mVo = mservice.selectByEmail(email);
		model.addAttribute("mVo", mVo);
		return "cash/cash";
	}
	
	@ResponseBody
	@RequestMapping("/complete")
	public int complete(@ModelAttribute OrderVO vo) {
		//파밍페이 서비스번호 1, 판매자 = 파밍, 서비스이름 = 파밍페이
		logger.info("결제처리 vo = {}",vo);
		CashVO cVo = new CashVO();
		vo.setExpertNo(0);
		vo.setExpertName("파밍");
		vo.setServiceName("파밍페이충전");
		vo.setServiceNo(1);
		int res = oservice.insert(vo);
		if(res > 0) {
			cVo.setCharge(vo.getPrice());
			cVo.setMemberNo(vo.getMemberNo());
			cVo.setMerchantUid(vo.getMerchantUid());
			res = sservice.insert(cVo);
			if(res > 0) {
				sservice.plusBal(cVo.getMemberNo());
				logger.info("성공");
			} else {
				logger.info("실패");
			}
		}
		return res;
	}
	
	@RequestMapping("/list")
	public String list(HttpSession session, Model model) {
		String email = (String) session.getAttribute("email");
		MemberVO mVo = mservice.selectByEmail(email);
		model.addAttribute("mVo", mVo);
		
		List<Map<String, Object>> pList = oservice.selectByPay(mVo.getMemberNo());
		List<OrderVO> list = oservice.select(mVo.getMemberNo());
		model.addAttribute("list", list);
		model.addAttribute("pList", pList);
		
		return "cash/list";
	}
}
