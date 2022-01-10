package com.gr.farming.knowhow.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.gr.farming.knowhow.model.KnowHowService;
import com.gr.farming.knowhow.model.KnowHowVO;
import com.gr.farming.qna.model.QnaVO;

@Controller
@RequestMapping("/knowhow")
public class KnowHowController {
	private static final Logger logger
	=LoggerFactory.getLogger(KnowHowController.class);
	
	private final KnowHowService knowhowService;
	
	
	@Autowired
	public KnowHowController(KnowHowService knowhowService) {
		this.knowhowService = knowhowService;
		logger.info("생성자 주입");
	}

	
	@RequestMapping("/list")
	public String list(HttpSession session, Model model) {
		
		List<KnowHowVO> list = knowhowService.selectKnowhowAll();
//		List<QnaVO> list = qnaService.select(memberNo);
		model.addAttribute("list", list);
		return "knowhow/list";
	}
	
	@RequestMapping(value="/write",method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "knowhow/write";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write_post(@ModelAttribute KnowHowVO vo, HttpSession session,
			Model model) {
		
		logger.info("글쓰기처리, 파라미터 vo={}",vo);
		vo.setExpertNo((int)session.getAttribute("userNo"));
		
		int cnt=knowhowService.insertKnowhow(vo);
		String msg = "글쓰기 실패", url = "/knowhow/write";
		if(cnt > 0) {
			msg = "성공";
			url = "/knowhow/list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "common/message";
		
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
	
	
	@GetMapping("/edit")
	public String edit_get(@RequestParam(defaultValue="0") int no,
			HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 no={}",no);
		if(no==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/knowhow/list");
			
			return "common/message";
		}
		
		KnowHowVO vo=knowhowService.selectByNo(no);
		logger.info("수정화면, 조회결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "knowhow/edit";
	}
	
	@PostMapping(value="/edit")
	public String edit_post(@ModelAttribute KnowHowVO vo,
			HttpServletRequest request, Model model) {
		
		logger.info("글수정 처리, 파라미터 vo={}",vo);
		
		String msg="글수정 실패", url="/knowhow/edit?knowhowNo="+vo.getKnowhowNo();
		int cnt = knowhowService.updateKnowhow(vo);
		if(cnt>0) {
			msg="게시글이 수정 되었습니다.";
			url="/qna/qnaDetail?no="+vo.getKnowhowNo();
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "redirect:knowhow/list";		
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam(defaultValue="0") int no,
			HttpServletRequest request, Model model) {
		logger.info("글 상세보기 파라미터 no={}", no);
		
		if(no==0) {
			model.addAttribute("msg","잘못된 url입니다.");
			model.addAttribute("url","/knowhow/list");
			
			return "common/message";
		}
		
		KnowHowVO vo = knowhowService.selectByNo(no);
		logger.info("상세보기 결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "knowhow/detail";
	}	

	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue="0") int no,
			Model model) {
		logger.info("글 삭제 화면, 파라미터 no={}",no);
		if(no==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/knowhow/list");
			return "common/message";
		}
		
		return "knowhow/delete";
	}
	
	@RequestMapping(value="delete", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute KnowHowVO vo,
			HttpServletRequest request, Model model) {
		logger.info("글 삭제 처리, 파라미터 vo={}",vo);
		
		String msg="글삭제 실패", url="knowhow/delete?no"+vo.getKnowhowNo()+"&step="+vo.getStep()
			+"&groupNo="+vo.getGroupNo();
		
		Map<String, String> map = new HashMap<>();
		map.put("step", vo.getStep()+"");
		map.put("no", vo.getKnowhowNo()+"");
		map.put("groupNo", vo.getGroupNo()+"");
		
		knowhowService.deleteKnowhow(map);
		msg="게시글이 삭제되었습니다.";
		url="/knowhow/list";
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
}
