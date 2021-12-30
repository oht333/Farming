package com.gr.farming.qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String qnaList() {
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
	
	@RequestMapping(value="/qnaWrite.do",method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "qna/qnaWrite";
	}
	
	@RequestMapping(value="/qnaWrite.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute QnaVO vo,
			HttpServletRequest request) {
		
		logger.info("글쓰기처리, 파라미터 vo={}",vo);
		
		int cnt=qnaService.insertQna(vo);
		logger.info("글쓰기결과, cnt={}",cnt);
		
		return "redirect:/qna/qnaList.do";
		
	}
	
}
