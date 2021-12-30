package com.gr.farming.qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.common.SearchVO;
import com.gr.farming.qna.model.QnaService;
import com.gr.farming.qna.model.QnaVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	private static final Logger logger
	=LoggerFactory.getLogger(QnaController.class);
	
	private final QnaService qnaService;
	
	
	@Autowired
	public QnaController(QnaService qnaService) {
		this.qnaService = qnaService;
		logger.info("생성자 주입");
	}

	@RequestMapping("/qnaMain")
	public String qnaMain() {
		return "qna/qnaMain";
	}
	
	@RequestMapping("/qnaGuest")
	public String qnaGuest() {
		return "qna/qnaGuest";
	}
	
	@RequestMapping("/qnaDeveloper")
	public String qnaDeveloper() {
		return "qna/qnaDeveloper";
	}
	
	@RequestMapping("/qnaList")
	public String qnaList(HttpSession session, Model model) {
		
		List<QnaVO> list = qnaService.select((int)session.getAttribute("memNo"));
//		List<QnaVO> list = qnaService.select(memberNo);
		model.addAttribute("list", list);
		return "qna/qnaList";
	}
	
	/*
	 * @RequestMapping("/qnaList") public String qnaList(@ModelAttribute SearchVO
	 * searchVo, Model model) {
	 * 
	 * logger.info("글목록, 파라미터 searchVo={}", searchVo);
	 * 
	 * // 페이지네이션인포 객체 생성 : 계산목적 PaginationInfo pagingInfo = new PaginationInfo();
	 * pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
	 * pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
	 * pagingInfo.setCurrentPage(searchVo.getCurrentPage());
	 * 
	 * // searchvo에 값 넣기 searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
	 * searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
	 * logger.info("값 셋팅 후 searchVo={}", searchVo);
	 * 
	 * List<QnaVO> list = qnaService.selectAll(searchVo);
	 * logger.info("전체 조회 결과 list.size={}", list.size());
	 * 
	 * // totalrecord 구하기
	 * 
	 * int totalRecord=qnaService.selectTotalRecord(searchVo);
	 * pagingInfo.setTotalRecord(totalRecord);
	 * 
	 * // model에 저장
	 * 
	 * model.addAttribute("list", list); model.addAttribute("pagingInfo",
	 * pagingInfo);
	 * 
	 * // 뷰페이지로 리턴 return "qna/qnaList"; }
	 */
	
	@RequestMapping(value="/qnaWrite",method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "qna/qnaWrite";
	}
	
	@RequestMapping(value="/qnaWrite", method = RequestMethod.POST)
	public String write_post(@ModelAttribute QnaVO vo,
			Model model) {
		
		logger.info("글쓰기처리, 파라미터 vo={}",vo);
		
		int cnt=qnaService.insert(vo);
		String msg = "글쓰기 실패", url = "/qna/qnaWrite";
		if(cnt > 0) {
			msg = "성공";
			url = "/qna/qnaList";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "common/message";
		
	}
	
	@GetMapping("/qnaEdit")
	public String edit_get(@RequestParam(defaultValue="0") int no,
			HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 no={}",no);
		if(no==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/qna/qnaList");
			
			return "common/message";
		}
		
		QnaVO vo=qnaService.selectByNo(no);
		logger.info("수정화면, 조회결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "qna/qnaEdit";
	}
	
	@PostMapping(value="/qnaEdit")
	public String edit_post(@ModelAttribute QnaVO vo,
			HttpServletRequest request, Model model) {
		
		logger.info("글수정 처리, 파라미터 vo={}",vo);
		
		String msg="글수정 실패", url="/qna/qnaEdit?no="+vo.getQnaNo();
		
		return "";
		
	}
	
}
