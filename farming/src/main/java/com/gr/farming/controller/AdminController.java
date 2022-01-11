package com.gr.farming.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;
import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.expert.model.ExpertService;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;
import com.gr.farming.common.SearchVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final CategoryService service;
	private final MemberService mem_service;
	private final ExpertService exp_service;

	@Autowired
	public AdminController(CategoryService service, MemberService mem_service, ExpertService exp_service) {
		this.service = service;
		this.mem_service = mem_service;
		this.exp_service = exp_service;
	}

	private static final Logger logger
	=LoggerFactory.getLogger(AdminController.class);

	@RequestMapping("/main")
	public String main(@ModelAttribute SearchVO searchVo, Model model) {
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
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		List<MemberVO> list=mem_service.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());

		//[3] totalRecord 구하기
		int memtotalRecord=mem_service.selectTotalRecord(searchVo);
		int exptotalRecord=exp_service.selectTotalRecord();
		pagingInfo.setTotalRecord(memtotalRecord);
		
		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("memCount", memtotalRecord);
		model.addAttribute("expCount", exptotalRecord);

		return "admin/main";
	}
	@RequestMapping("/error")
	public String error() {

		return "admin/error";
	}
	@RequestMapping("/iconFontawesome")
	public String iconFontawesome() {

		return "admin/iconFontawesome";
	}
	@RequestMapping("/mapGoogle")
	public String mapGoogle() {

		return "admin/mapGoogle";
	}
	@RequestMapping("/pagesBlank")
	public String pagesBlank() {

		return "admin/pagesBlank";
	}
	@RequestMapping("/pagesProfile")
	public String pagesProfile() {

		return "admin/pagesProfile";
	}
	@RequestMapping("/tableBasic")
	public String tableBasic() {

		return "admin/tableBasic";
	}

	@RequestMapping("/manage/mem_list")
	public String mem_list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("회원 목록 페이지");

		// 페이지네이션인포 객체 생성 : 계산목적 
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		// searchvo에 값 넣기 
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		int totalRecord=mem_service.totalMember();
		pagingInfo.setTotalRecord(totalRecord);

		List<MemberVO> mem_list = mem_service.selectAll(searchVo);
		logger.info("회원 목록 페이지 mem_list.size={}", mem_list.size());

		model.addAttribute("mem_list", mem_list);
		return "admin/manage/mem_list";
	}

	@RequestMapping("/manage/dev_list")
	public String dev_list(Model model) {
		logger.info("전문가 목록 페이지");

		List<ExpertVO> dev_list = exp_service.selectAll();
		logger.info("전문가 목록 페이지 dev_list.size={}", dev_list.size());

		model.addAttribute("dev_list", dev_list);
		return "admin/manage/dev_list";
	}

	@RequestMapping("/manage/mem_detail")
	public String mem_detail(@RequestParam(defaultValue = "0") int memberNo, Model model) {
		logger.info("회원 상세보기 파라미터 no={}", memberNo);

		MemberVO vo = mem_service.selectByNo(memberNo);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "admin/manage/mem_detail";
	}

	@RequestMapping(value="/manage/mem_del", method = RequestMethod.GET)
	public String del_get(@RequestParam(defaultValue = "0") int memberNo, Model model) {
		logger.info("회원 삭제 화면, 파라미터 no={}", memberNo);

		return "admin/manage/mem_del";
	}

	@RequestMapping(value="/manage/mem_del", method = RequestMethod.POST)
	public String mdel_post(@ModelAttribute MemberVO vo, Model model) {
		logger.info("회원 삭제 처리, 파라미터 vo={}", vo);
		String msg="", url="";

		int cnt=mem_service.deleteMember(vo.getMemberNo());

		if(cnt>0) {
			msg="회원이 삭제되었습니다.";
			url="/admin/manage/mem_list";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

	@RequestMapping("/manage/dev_detail")
	public String mdev_detail(@RequestParam(defaultValue = "0") int expertNo, Model model) {
		logger.info("전문가 상세보기 파라미터 no={}", expertNo);

		ExpertVO vo = exp_service.selectByNo(expertNo);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "admin/manage/dev_detail";
	}

	@RequestMapping(value="/manage/dev_del", method = RequestMethod.GET)
	public String ddel_get(@RequestParam(defaultValue = "0") int expertNo, Model model) {
		logger.info("전문가 삭제 화면, 파라미터 no={}", expertNo);

		return "admin/manage/dev_del";
	}

	@RequestMapping(value="/manage/dev_del", method = RequestMethod.POST)
	public String ddel_post(@ModelAttribute ExpertVO vo, Model model) {
		logger.info("전문가 삭제 처리, 파라미터 vo={}", vo);
		String msg="", url="";

		int cnt=exp_service.deleteExpert(vo.getExpertNo());

		if(cnt>0) {
			msg="전문가가 삭제되었습니다.";
			url="/admin/manage/dev_list";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}

}
