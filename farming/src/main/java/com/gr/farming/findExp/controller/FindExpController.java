package com.gr.farming.findExp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.findExp.model.ExpertInfoVO;
import com.gr.farming.findExp.model.FindExpService;


@Controller
@RequestMapping("/findexp")
public class FindExpController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(FindExpController.class);
	
	private final FindExpService findExpService;

	@Autowired
	public FindExpController(FindExpService findExpService) {
		this.findExpService = findExpService;
	}

	@RequestMapping(value="/findexpWrite", method = RequestMethod.GET)
	public String findexpWrite() {
		logger.info("전문가찾기 글 등록");
		return "findexp/findexpWrite";
	}
	
	@RequestMapping("/expDetail")
	public String findexpDetail(@RequestParam(defaultValue="0") int expertNo,
			Model model) {
		
		logger.info("전문가 상세페이지, 파라미터 expertNo={}", expertNo);
		
		ExpertInfoVO expInfoVo=findExpService.selectExpInfo(expertNo);
		ExpertVO expVo=findExpService.selectByExperNo(expertNo);
		List<Map<String, Object>> fieldList=findExpService.selectField(expertNo);
		logger.info("전문가 expVo={}", expVo);
		logger.info("전문가 expInfoVo={}", expInfoVo);
		logger.info("전문가 fieldList={}", fieldList);
		
		model.addAttribute("infoVo", expInfoVo);
		model.addAttribute("expVo", expVo);
		model.addAttribute("fieldList", fieldList);
		
		return "findexp/expDetail";
	}
	
	
	@RequestMapping("/findexpList")
	public String findexpList() {
		logger.info("전문가찾기 글 목록 조회");
		
		
		return "findexp/findexpList";
	}
	
	
	
	/* 전문가 상세페이지 수정 */
	
	@RequestMapping("/expDetailEdit")
	public String expDetailEdit(@RequestParam(defaultValue="0") int expertNo,
			Model model) {
		
		logger.info("전문가 상세페이지, 파라미터 expertNo={}", expertNo);
		
		ExpertInfoVO expInfoVo=findExpService.selectExpInfo(expertNo);
		ExpertVO expVo=findExpService.selectByExperNo(expertNo);
		List<Map<String, Object>> fieldList=findExpService.selectField(expertNo);
		logger.info("전문가 expVo={}", expVo);
		logger.info("전문가 expInfoVo={}", expInfoVo);
		logger.info("전문가 fieldList={}", fieldList);
		
		model.addAttribute("infoVo", expInfoVo);
		model.addAttribute("expVo", expVo);
		model.addAttribute("fieldList", fieldList);
		
		return "findexp/expDetailEdit";
	}
	
	@ResponseBody
	@RequestMapping("/editIntro")
	public ExpertInfoVO editIntro(@ModelAttribute ExpertInfoVO vo) {
		
		logger.info("전문가 상세페이지 - 한줄소개 수정, 파라미터 vo={}", vo);
		
		int cnt=findExpService.updateIntro(vo);
		logger.info("한줄 소개 수정 결과 cnt={}", cnt);
		if(cnt>0) {
			logger.info("한줄 소개 수정 완료");
		}else {
			logger.info("수정 실패");
		}
		
		ExpertInfoVO infoVo=findExpService.selectExpInfo(vo.getExpertNo());
		logger.info("수정된 vo={}",infoVo);
		
	
		return infoVo;
	}
	
	@ResponseBody
	@RequestMapping("/editDetailInfo")
	public ExpertInfoVO editDetailInfo(@ModelAttribute ExpertInfoVO vo) {
		
		logger.info("전문가 상세페이지 - 상세설명 수정, 파라미터 vo={}", vo);
		
		int cnt=findExpService.updateDetailInfo(vo);
		logger.info("상세설명 수정 결과 cnt={}", cnt);
		if(cnt>0) {
			logger.info("상세설명 수정 완료");
		}else {
			logger.info("수정 실패");
		}
		
		ExpertInfoVO infoVo=findExpService.selectExpInfo(vo.getExpertNo());
		logger.info("수정된 vo={}",infoVo);
		
		
		return infoVo;
	}
	
	@ResponseBody
	@RequestMapping("/editExpInfo")
	public ExpertInfoVO editExpInfo(@ModelAttribute ExpertInfoVO vo) {
		
		logger.info("전문가 상세페이지 수정, 파라미터 vo={}", vo);
		
		int cnt=findExpService.updateExpInfo(vo);
		logger.info("수정 결과, cnt={}", cnt);
		if(cnt>0) {
			logger.info("상세설명 수정 완료");
		}else {
			logger.info("수정 실패");
		}
		
		ExpertInfoVO infoVo=findExpService.selectExpInfo(vo.getExpertNo());
		logger.info("수정된 vo={}",infoVo);
		
		return infoVo;
	}
}
