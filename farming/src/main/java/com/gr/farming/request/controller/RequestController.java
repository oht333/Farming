package com.gr.farming.request.controller;


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

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;
import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.FieldSearchVO;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.common.SearchVO;
import com.gr.farming.field.model.FieldDetailVO;
import com.gr.farming.findExp.model.FindExpService;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.request.model.RequestDesignVO;
import com.gr.farming.request.model.RequestDevelopVO;
import com.gr.farming.request.model.RequestQnaVO;
import com.gr.farming.request.model.RequestService;
import com.gr.farming.request.model.RequestVO;

@Controller
@RequestMapping("/request")
public class RequestController {

	private static final Logger logger
		= LoggerFactory.getLogger(RequestController.class);
	
	private final RequestService requestService;
	private final CategoryService categoryService;
	private final FindExpService findExpService;
	private final MemberService memService;

	@Autowired
	public RequestController(RequestService requestService, CategoryService categoryService,
			FindExpService findExpService, MemberService memService) {
		this.requestService = requestService;
		this.categoryService = categoryService;
		this.findExpService = findExpService;
		this.memService = memService;
	}

	@RequestMapping("/request")
	public void request(@RequestParam int categoryNo, Model model) {
		logger.info("견적서 작성 메인화면 보여주기, 파라미터 categoryNo={}", categoryNo);

		CategoryVO categoryVo=categoryService.selectByNo(categoryNo);
		String detail=categoryVo.getDetail();
		
		model.addAttribute("categoryNo",categoryNo);
		model.addAttribute("detail", detail);
		
	}
	
	@GetMapping("/requestWrite")
	public String request_get(@RequestParam int categoryNo,
			@RequestParam(defaultValue="0") int expertNo, Model model) {
		
		logger.info("견적서 작성 메인화면 보여주기, 파라미터 categoryNo={}", categoryNo);
		CategoryVO categoryVo=categoryService.selectByNo(categoryNo);

		String main=categoryVo.getMain();
		String detail=categoryVo.getDetail();
		logger.info("detail={}",detail);
		
		List<Map<String, Object>> qList=requestService.selectQuestion(categoryNo);
		logger.info("견적서 질문 조회 결과, qList.size={}", qList.size());
		
		List<RequestQnaVO> aList=requestService.selectRequestQna(categoryNo);
		
		model.addAttribute("qList", qList);
		model.addAttribute("aList", aList);
		model.addAttribute("categoryNo",categoryNo);
		model.addAttribute("main", main);
		model.addAttribute("expertNo", expertNo);
		model.addAttribute("detail", detail);
		
		return "request/request_1";
	}
	
	@PostMapping("/requestWrite/develop")
	public String requestDevelop_post(@ModelAttribute RequestDevelopVO vo, 
			@ModelAttribute RequestVO requestVo, Model model) {
		
		logger.info("견적서 작성 내용입력 처리");
		logger.info("견적서 처리 파라미터 vo={}", vo);
		
		int cnt=requestService.insertRequestDevelop(vo);
		logger.info("견적서 처리 결과 cnt={}", cnt);
		
		requestVo.setRequestDevelopNo(vo.getRequestdevelopNo());
		cnt=requestService.insertRequest(requestVo);
		logger.info("견적서 처리 requestVo={}", requestVo);
		logger.info("견적서요청 처리 결과 cnt={}", cnt);
		
		String msg="견적서 보내기 실패", url="request/request_develop";
		if(cnt>0) {
			msg="견적서 작성이 처리되었습니다.";
			url="/request/request_success";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@PostMapping("/requestWrite/design")
	public String requestDesign_post(@ModelAttribute RequestDesignVO vo, 
			@ModelAttribute RequestVO requestVo, Model model) {
		logger.info("견적서 작성 내용입력 처리, 파라미터 vo={}", vo);
		
		int cnt=requestService.insertRequestDesign(vo);
		logger.info("견적서문답 처리 결과 cnt={}", cnt);
		
		requestVo.setRequestDesignNo(vo.getRequestDesignNo());
		cnt=requestService.insertRequest(requestVo);
		logger.info("견적서 처리 requestVo={}", requestVo);
		logger.info("견적서요청 처리 결과 cnt={}", cnt);
		
		String msg="견적서 보내기 실패", url="request/request_design";
		if(cnt>0) {
			msg="견적서 작성이 처리되었습니다.";
			url="/request/request_success";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@GetMapping("/request_success")
	public String request_success() {
		logger.info("견적서 작성 완료 화면");
		return "request/request_success";
	}
	
	@RequestMapping("/requestByClient")
	public String requestByClient(@ModelAttribute FieldSearchVO fieldSearchVo
			,@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		
		int expertNo=(int) session.getAttribute("userNo");
		fieldSearchVo.setUserNo(expertNo);
		logger.info("받은 요청 페이지 - 파라미터 fieldSearchVo={}", fieldSearchVo);
		logger.info("받은 요청 페이지 - 파라미터 currentPage={}", fieldSearchVo.getCurrentPage());
		
		String detail=fieldSearchVo.getDetail();
		if(detail==null || detail.isEmpty()) {
			fieldSearchVo.setDetail("");
		}
		
		//[1] paginationInfo
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setCurrentPage(fieldSearchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		//[2] fieldSearchVo에 페이징에 필요한 값 세팅
		fieldSearchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		fieldSearchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		logger.info("값 셋팅 후 fieldSearchVo={}", fieldSearchVo);
		
		List<FieldDetailVO> fieldList=findExpService.selectFieldDetail(expertNo);
		
		List<Map<String, Object>> list=requestService.selectRequestDetail1(fieldSearchVo);
		logger.info("받은 요청 목록 조회 detail={}, list.size={}", fieldSearchVo.getDetail(),list.size());
		
		int totalRecord=requestService.selectTotalRecord(fieldSearchVo);
		logger.info("받은 요청 목록 조회 수 - totalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		int curPage=pagingInfo.getCurrentPage();
		
		model.addAttribute("list", list);
		model.addAttribute("fieldList", fieldList);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("curPage", curPage);
		
		return "request/requestByClient";
	}
	
	@RequestMapping("/finalRequest")
	public String sendFinalRequest() {
		
		logger.info("견적 보내기 페이지 ");
		
		return "/request/finalRequest";
		
	}
	
	@RequestMapping("/requestByExpert")
	public String requestByExpert() {
		
		
		
		logger.info("받은 견적 페이지");
		
		
		
		return "request/requestByExpert";
	}
	
	
	
}













