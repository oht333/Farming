package com.gr.farming.notice.controller;

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
import com.gr.farming.notice.model.NoticeService;
import com.gr.farming.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger
	= LoggerFactory.getLogger(NoticeController.class);
	
	private final NoticeService noticeService;
	
	
	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
		logger.info("생성자 주입입입");
	}



	@RequestMapping("/noticeList")
	public String noticeList(@ModelAttribute SearchVO searchVo, HttpSession session,
			Model model) {
		
		logger.info("글 목록, 파라미터 searchVo={}",searchVo);
		
		// 페이지네이션인포 객체 생성 : 계산목적 
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		// searchvo에 값 넣기 
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		List<NoticeVO> list = noticeService.select(searchVo);
		logger.info("전체 조회 결과 list.size={}",list.size());
		
		int totalRecord=noticeService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);

		return "notice/noticeList";
	}
	
	@RequestMapping(value="/noticeWrite", method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		return "notice/noticeWrite";
	}
	
	@RequestMapping(value="/noticeWrite", method =  RequestMethod.POST)
	public String write_post(@ModelAttribute NoticeVO vo, Model model) {
		logger.info("글쓰기 처리, 파라미터 vo={}",vo);
		
		int cnt=noticeService.insert(vo);
		String msg="글 작성 실패", url="/notice/noticeWrite";
		if(cnt>0) {
			msg="글 작성 성공";
			url="/notice/noticeList";
		}
		
		model.addAttribute("url",url);
		model.addAttribute("msg",msg);
		return "common/message";
	}
	
	@GetMapping("/noticeEdit")
	public String edit_get(@RequestParam(defaultValue="0") int noticeNo,
			HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 no={}",noticeNo);
		if(noticeNo==0) {
			model.addAttribute("msg","잘못된 url 입니다");
			model.addAttribute("url","/notice/noticeList");
			
			return "common/message";
		}
		
		NoticeVO vo = noticeService.selectByNo(noticeNo);
		logger.info("수정화면, 조회결과 vo={}",vo);
		
		model.addAttribute(vo);
		
		return "notice/noticeEdit";
	}
	
	@PostMapping(value="/noticeEdit")
	public String edit_post(@ModelAttribute NoticeVO vo, HttpServletRequest request, 
			Model model) {
		logger.info("글수정 처리, 파라미터 vo={}",vo);
		
		String msg="글 수정 실패", url ="/notice/noticeEdit?noticeNo="+vo.getNoticeNo();
		int cnt = noticeService.update(vo);
		if(cnt>0) {
			msg="게시글이 수정 되었습니다";
			url="/notice/noticeDetail?noticeNo="+vo.getNoticeNo();
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	
	@RequestMapping("/noticeDetail")
	public String detail(@RequestParam(defaultValue="0")int noticeNo, HttpServletRequest request,
			Model model) {
		logger.info("글 상세보기 파라미터 no={}",noticeNo);
		
		if(noticeNo==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/notice/noticeList");
			
			return "common/message";
		}
		
		NoticeVO vo = noticeService.selectByNo(noticeNo);
		logger.info("상세보기 결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "notice/noticeDetail";
	}
	
	@RequestMapping(value="noticeDelete",method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue="0") int noticeNo, Model model) {
		logger.info("글 삭제 화면, 파라미터 no={}",noticeNo);
		
		if(noticeNo==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/notice/noticeList");
			
			return "common/message";
		}
		return "notice/noticeDelete";
		
	}
	
	@RequestMapping(value="noticeDelete",method = RequestMethod.POST)
	public String delete_post(@ModelAttribute NoticeVO vo, Model model) {
		logger.info("글 삭제 처리, 파라미터 vo={}",vo);
		
		String msg="글삭제 실패",url="notice/noticeDelte?noticeNo="+vo.getNoticeNo();

		int cnt=noticeService.delete(vo.getNoticeNo());
		if(cnt>0) {
			msg="글 삭제 완료";
			url="/notice/noticeList";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	
	
	
	
	
	
	
	
}
