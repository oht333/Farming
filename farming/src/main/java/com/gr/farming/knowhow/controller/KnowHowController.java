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
import com.gr.farming.knowhow.model.SearchVO3;
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
	public String list(@ModelAttribute SearchVO3 searchVo, HttpSession session, Model model) {
		//1
		logger.info("글목록, 파라미터 searchVo={}", searchVo);
				
		//2
		//searchVo에 firstRecordIndex, recordCountPerPage 값을 넣어줘야 함
		//=> PaginationInfo를 이용하여 firstRecordIndex값을 미리 구한다
		
		//[1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2] searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setExpertNo((int)session.getAttribute("userNo")); 
		logger.info("값 셋팅 후 searchVo={}", searchVo);	
		
		List<KnowHowVO> list = knowhowService.selectKnowhowAll(searchVo);
		
		logger.info("전체조회 결과 list.size={}", list.size());
		logger.info("list={}", list);	
		
		//[3] totalRecord 구하기
				int totalRecord=knowhowService.selectTotalRecord(searchVo);
				pagingInfo.setTotalRecord(totalRecord);
				
		//3. model에 결과 저장		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		//4. 뷰페이지 리턴		
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
	
	@GetMapping("/edit")
	public String edit_get(@RequestParam(defaultValue="0") int knowhowNo,
			HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 no={}",knowhowNo);
		if(knowhowNo==0) {
			model.addAttribute("msg","잘못된 url 입니다.");
			model.addAttribute("url","/knowhow/list");
			
			return "common/message";
		}
		
		KnowHowVO vo=knowhowService.selectByNo(knowhowNo);
		logger.info("수정화면, 조회결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "knowhow/edit";
	}
	
	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public String edit_post(@ModelAttribute KnowHowVO vo,
			HttpServletRequest request, Model model) {

		logger.info("글수정 처리, 파라미터 vo={}",vo);
		
		int cnt = knowhowService.updateKnowhow(vo);
		
		String msg="글수정 실패", url="/knowhow/edit?knowhowNo="+vo.getKnowhowNo();
		if(cnt>0) {
			msg="게시글이 수정 되었습니다.";
			url="/knowhow/detail?knowhowNo="+vo.getKnowhowNo();
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		/* return "redirect:knowhow/list"; */		
		return "common/message";		
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam(defaultValue="0") int knowhowNo, 
			Model model) {
		logger.info("글 상세보기 파라미터 knowhowNo={}", knowhowNo);
		
		if(knowhowNo==0) {
			model.addAttribute("msg","잘못된 url입니다.");
			model.addAttribute("url","/knowhow/list");
			
			return "common/message";
		}
		
		KnowHowVO vo = knowhowService.selectByNo(knowhowNo);
		logger.info("상세보기 결과 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "knowhow/detail";
	}		
	
	@RequestMapping("/countUpdate")
	public String countUpdate(@RequestParam(defaultValue = "0") int knowhowNo, 
			Model model) {
		logger.info("조회수 증가 파라미터 knowhowNo={}", knowhowNo);
		
		if(knowhowNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/knowhow/list");
			
			return "common/message";
		}
		
		int cnt=knowhowService.updateReadCount(knowhowNo);
		logger.info("조회수 증가 결과 cnt={}", cnt);
		
		return "redirect:/knowhow/detail?knowhowNo="+knowhowNo;		
	}	

	
	
	
	
	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue="0") int knowhowNo,
			Model model) {
		logger.info("글 삭제 화면, 파라미터 knowhowNo={}",knowhowNo);
		if(knowhowNo==0) {
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
		
		//2
		String msg="글삭제 실패", url="/knowhow/delete?knowhowNo="+vo.getKnowhowNo();
		int cnt=knowhowService.deleteKnowhow(vo.getKnowhowNo());
		if(cnt>0) {
				msg="글삭제되었습니다.";
				url="/knowhow/list";
		}else {
			msg="삭제 실패";
			url="/knowhow/list";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}	
	
/*	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute KnowHowVO vo, 
			HttpServletRequest request, Model model) {
		//1
		logger.info("글삭제 처리, 파라미터 vo={}", vo);
		
		//2
		String msg="글삭제 실패", url="/knowhow/delete?knowhowNo="
				+vo.getKnowhowNo()+"&step="+vo.getStep()+"&groupNo="+vo.getGroupNo();
		
		Map<String, String> map = new HashMap<>();
		map.put("step", vo.getStep()+"");
		map.put("no", vo.getKnowhowNo()+"");
		map.put("groupNo", vo.getGroupNo()+"");
			
		knowhowService.deleteKnowhow(map);			
		msg="글삭제되었습니다.";
		url="/reBoard/list";		
					
		//3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	} */
	
	@GetMapping("/reply")
	public String reply_get(@RequestParam(defaultValue = "0") int knowhowNo,
			Model model) {	
		logger.info("답변화면, 파라미터 knowhowNo={}", knowhowNo);
		
		if(knowhowNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/knowhow/list");
			
			return "common/message";			
		}
		
		KnowHowVO vo=knowhowService.selectByNo(knowhowNo);
		logger.info("답변화면-조회 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "knowhow/reply";
	}
	
	@PostMapping("/reply")
	public String reply_post(@ModelAttribute KnowHowVO vo, 
			HttpSession session, Model model) {
		logger.info("답변하기, 파라미터 vo={}", vo);
		vo.setExpertNo((int)session.getAttribute("userNo"));
		
		int cnt = knowhowService.reply(vo);
		logger.info("답변하기 결과 cnt={}", cnt);
		
		String msg = "글쓰기 실패", url = "/knowhow/detail?knowhowNo="+vo.getKnowhowNo();
		
		if(cnt > 0) {
			msg = "성공";
			url = "/knowhow/list";
		}
		
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return "common/message";
	}
}
