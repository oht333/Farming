package com.gr.farming.knowhow.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.gr.farming.common.FileUploadUtil;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.common.SearchVO;
import com.gr.farming.controller.AdminController;
import com.gr.farming.knowhow.model.KnowHowService;
import com.gr.farming.knowhow.model.KnowHowVO;

@Controller
@RequestMapping("/knowhow")
public class KnowHowController {
	private static final Logger logger
		=LoggerFactory.getLogger(AdminController.class);	
	
	private final KnowHowService knowhowService;
	private final FileUploadUtil fileUploadUtil;
	
	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public KnowHowController(KnowHowService knowhowService, FileUploadUtil fileUploadUtil) {
		this.knowhowService = knowhowService;
		this.fileUploadUtil = fileUploadUtil;
		logger.info("생성자주입!!");
	}

	@RequestMapping("/list")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		//1. 파라미터 읽어오기 - 출력
		logger.info("목록 페이지");
		
		//2. db작업 => 매퍼 xml에서 작업		
		
		List<KnowHowVO> list = knowhowService.selectKnowhowAll();
		logger.info("게시판 조회, 결과 list.size={}", list.size());
		
		//[3] totalRecord 구하기
		/*
		 * int totalRecord=knowhowService.selectTotalRecord(searchVo);
		 * pagingInfo.setTotalRecord(totalRecord);
		 */	
		
		//3. model에 결과 저장
		model.addAttribute("list", list);
		/* model.addAttribute("pagingInfo", pagingInfo); */
		
		//4. 뷰페이지 리턴
		return "knowhow/list";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "knowhow/write";
	}

	@RequestMapping(value="/write.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute KnowHowVO knowhowVo, 
			HttpServletRequest request) {
		//1
		logger.info("글쓰기 처리, 파라미터 vo={}", knowhowVo);
		

		
		/*
		 * //2 knowhowVo.setFileName(fileName);
		 * knowhowVo.setOriginalFileName(originName); knowhowVo.setFileSize(fileSize);
		 */
		
		int cnt=knowhowService.insertKnowhow(knowhowVo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		
		//3		
		
		//4
		return "redirect:/knowhow/list";
	}
}