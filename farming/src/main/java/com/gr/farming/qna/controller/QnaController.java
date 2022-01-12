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
import com.gr.farming.qcomment.model.QcommentService;
import com.gr.farming.qcomment.model.QcommentVO;
import com.gr.farming.qna.model.QnaService;
import com.gr.farming.qna.model.QnaVO;
import com.gr.farming.qna.model.SearchVO2;

@Controller
@RequestMapping("/qna")
public class QnaController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	private final QnaService qnaService;
	
	private final QcommentService qcommentService;
	
	

	@Autowired
	public QnaController(QnaService qnaService,QcommentService qcommentService) {
		this.qnaService = qnaService;
		this.qcommentService = qcommentService;
		
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

	//	@RequestMapping("/qnaList")
	//	public String qnaList(HttpSession session, Model model) {

	//		List<QnaVO> list = qnaService.select((int) session.getAttribute("memNo"));
	//		List<QnaVO> list = qnaService.select(memberNo);
	//		model.addAttribute("list", list);
	//		return "qna/qnaList";
	//	}


	@RequestMapping("/qnaList") 
	public String qnaList(@ModelAttribute SearchVO2 searchVo, HttpSession session ,Model model) {

		logger.info("글목록, 파라미터 searchVo={}", searchVo);

		// 페이지네이션인포 객체 생성 : 계산목적 
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		// searchvo에 값 넣기 
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setMemNo((int)session.getAttribute("userNo"));
		logger.info("값 셋팅 후 searchVo={}", searchVo);



		List<QnaVO> list = qnaService.select(searchVo);
		logger.info("전체 조회 결과 list.size={}", list.size());

		// totalrecord 구하기

		int totalRecord=qnaService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		// model에 저장

		model.addAttribute("list", list); 
		model.addAttribute("pagingInfo", pagingInfo);

		//뷰페이지로 리턴 
		return "qna/qnaList";

	}


	@RequestMapping(value = "/qnaWrite", method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");

		return "qna/qnaWrite";
	}

	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public String write_post(@ModelAttribute QnaVO vo, Model model) {

		logger.info("글쓰기처리, 파라미터 vo={}", vo);

		int cnt = qnaService.insert(vo);
		String msg = "글쓰기 실패", url = "/qna/qnaWrite";
		if (cnt > 0) {
			msg = "성공";
			url = "/qna/qnaList";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "common/message";

	}

	@GetMapping("/qnaEdit")
	public String edit_get(@RequestParam(defaultValue = "0") int qnaNo, HttpServletRequest request, Model model) {
		logger.info("수정화면 파라미터 no={}", qnaNo);
		if (qnaNo == 0) {
			model.addAttribute("msg", "잘못된 url 입니다.");
			model.addAttribute("url", "/qna/qnaList");

			return "common/message";
		}

		QnaVO vo = qnaService.selectByNo(qnaNo);
		logger.info("수정화면, 조회결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "qna/qnaEdit";
	}

	@PostMapping(value = "/qnaEdit")
	public String edit_post(@ModelAttribute QnaVO vo, HttpServletRequest request, Model model) {

		logger.info("글수정 처리, 파라미터 vo={}", vo);

		String msg = "글수정 실패", url = "/qna/qnaEdit?qnaNo=" + vo.getQnaNo();
		int cnt = qnaService.updateQna(vo);
		if (cnt > 0) {
			msg = "게시글이 수정 되었습니다.";
			url = "/qna/qnaDetail?qnaNo=" + vo.getQnaNo();
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";

	}

	@RequestMapping("/qnaDetail")
	public String detail(@RequestParam(defaultValue = "0") int qnaNo, HttpServletRequest request, Model model) {
		logger.info("글 상세보기 파라미터 no={}", qnaNo);

		if (qnaNo == 0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/qna/qnaList");

			return "common/message";
		}

		QnaVO vo = qnaService.selectByNo(qnaNo);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "qna/qnaDetail";
	}

	@RequestMapping(value = "qnaDelete", method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue = "0") int qnaNo, Model model) {
		logger.info("글 삭제 화면, 파라미터 no={}", qnaNo);
		if (qnaNo == 0) {
			model.addAttribute("msg", "잘못된 url 입니다.");
			model.addAttribute("url", "/qna/qnaList");
			return "common/message";
		}

		return "qna/qnaDelete";
	}

	@RequestMapping(value = "qnaDelete", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute QnaVO vo, Model model) {
		logger.info("글 삭제 처리, 파라미터 vo={}", vo);

		String msg = "글삭제 실패",
				url = "qna/qnaDelte?qnaNo=" + vo.getQnaNo();


		int cnt=qnaService.deleteQna(vo.getQnaNo());
		if(cnt > 0) {
			msg="글 삭제 완료";
			url="/qna/qnaList";
		}
		

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}
	
	//댓글작성
		@PostMapping("/qnaDetail")
		public String write_post(@ModelAttribute QcommentVO vo, Model model) {
			logger.info("댓글작성 처리, 파라미터 vo={}",vo);
			
			int cnt=qcommentService.write(vo);
			String msg="댓글작성 실패", url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			if(cnt>0) {
				msg="성공";
				url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			}
			
			model.addAttribute("url",url);
			model.addAttribute("msg",msg);
			
			return "common/message";
			
		}
		
		//댓글수정
		@PostMapping(value="/qnaDetail")
		public String update_post(@ModelAttribute QcommentVO vo, HttpServletRequest request,
				Model model) {
			logger.info("댓글 수정 처리, 파라미터vo={}",vo);
			
			String msg="댓글 수정 실패",url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			int cnt=qcommentService.update(vo);
			if(cnt>0) {
				msg="댓글 수정 완료";
				url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			}
			
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			
			return "common/message";
		}
		
		//댓글삭제
		@RequestMapping(value="qnaDetail")
		public String delete_post(@ModelAttribute QcommentVO vo,
				HttpServletRequest request, Model model) {
			logger.info("댓글 삭제처리, 파라미터 vo={}",vo);
			
			String msg="댓글 삭제 실패", url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			int cnt=qcommentService.delete(vo.getQcommnetNo());
			if(cnt>0) {
				msg="댓글 삭제 성공";
				url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
			}
			
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			
			return "common/message";
		}



}
