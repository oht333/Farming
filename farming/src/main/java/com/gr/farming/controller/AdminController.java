package com.gr.farming.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
import com.gr.farming.member.model.SearchVO5;
import com.gr.farming.model.AdminService;
import com.gr.farming.model.AdminVO;
import com.gr.farming.common.SearchVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final CategoryService service;
	private final MemberService mem_service;
	private final ExpertService exp_service;
	private final AdminService a_service;

	@Autowired
	public AdminController(CategoryService service, MemberService mem_service, ExpertService exp_service, AdminService a_service) {
		this.service = service;
		this.mem_service = mem_service;
		this.exp_service = exp_service;
		this.a_service = a_service;
	}

	private static final Logger logger
	=LoggerFactory.getLogger(AdminController.class);
/*
	@RequestMapping("/main/chk")
	public String chkType(@RequestParam(value = "chk") String chk, Model model) {
		String res = "";
		if(chk.equals("exp")) {
			res = "exp";
			List<MemberVO> list = mem_service.
		} else {
			res = "mem";
		}
		logger.info("res : "+ res);
		model.addAttribute("res", res);
		return "admin/main";
	}
	*/
	@RequestMapping("/main/main")
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
		int exptotalRecord=exp_service.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(memtotalRecord);
		pagingInfo.setTotalRecord(exptotalRecord);
		
		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("memCount", memtotalRecord);
		model.addAttribute("expCount", exptotalRecord);
		
		List<MemberVO> mem_list = mem_service.selectAll(searchVo);
		model.addAttribute("mem_list", mem_list);
		logger.info("회원 목록 페이지 mem_list.size={}", mem_list.size());

		
		List<ExpertVO> dev_list = exp_service.selectAll(searchVo);
		model.addAttribute("dev_list", dev_list);
		logger.info("전문가 목록 페이지 dev_list.size={}", dev_list.size());

		
		return "admin/main/main";
	}
	@RequestMapping("/main/error")
	public String error() {

		return "admin/main/error";
	}
	@RequestMapping("/main/iconFontawesome")
	public String iconFontawesome() {

		return "admin/main/iconFontawesome";
	}
	@RequestMapping("/main/mapGoogle")
	public String mapGoogle() {

		return "admin/main/mapGoogle";
	}
	@RequestMapping("/main/pagesBlank")
	public String pagesBlank() {

		return "admin/main/pagesBlank";
	}
	@RequestMapping("/main/pagesProfile")
	public String pagesProfile() {

		return "admin/main/pagesProfile";
	}
	@RequestMapping("/main/tableBasic")
	public String tableBasic() {

		return "admin/main/tableBasic";
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

		int memtotalRecord=mem_service.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(memtotalRecord);

		List<MemberVO> mem_list = mem_service.selectAll(searchVo);
		logger.info("회원 목록 페이지 mem_list.size={}", mem_list.size());

		model.addAttribute("mem_list", mem_list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "admin/manage/mem_list";
	}

	@RequestMapping("/manage/dev_list")
	public String dev_list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("전문가 목록 페이지");
		
		// 페이지네이션인포 객체 생성 : 계산목적 
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		// searchvo에 값 넣기 
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		int exptotalRecord=exp_service.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(exptotalRecord);
		
		List<ExpertVO> dev_list = exp_service.selectAll(searchVo);
		logger.info("전문가 목록 페이지 dev_list.size={}", dev_list.size());

		model.addAttribute("dev_list", dev_list);
		model.addAttribute("pagingInfo", pagingInfo);
		
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
	
	@RequestMapping("/login")
	public String adminLogin() {
		logger.info("관리자 로그인");
		return "admin/login";
	}
	//로그인 처리
	@RequestMapping("/done")
	public String adminDone(@ModelAttribute AdminVO vo, Model model, HttpSession session) {
		int result = a_service.loginCheck(vo.getEmail(), vo.getPwd());
		String msg="로그인 처리 실패!", url="/admin/login";
		if(result == a_service.USERID_NONE) {
			msg="회원이 아닙니다.";
		} else if(result == a_service.LOGIN_OK){
			AdminVO adminVo = a_service.selectByEmail(vo.getEmail());
			//[1] 세션에 아이디 저장
			session.setAttribute("email", adminVo.getEmail());
			session.setAttribute("name", adminVo.getName());
			session.setAttribute("user", "관리자");

			//[2] 쿠키에 저장 - 아이디저장하기 체크된 경우만
			
			
			msg=adminVo.getName() + "님 로그인되었습니다.";
			url="/admin/main/main";
		} else if(result == a_service.DISAGREE_PWD) {
			msg = "패스워드를 확인하세요";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/excel")
	public void excelDownload(HttpServletRequest request ,HttpServletResponse response ,HttpSession session) throws Exception {
        
        OutputStream out = null;
        
        try {
            XSSFWorkbook workbook = a_service.listExcelDownload();
            
            response.reset();
            response.setHeader("Content-Disposition", "attachment;filename=stbcs_history.xls");
            response.setContentType("application/vnd.ms-excel");
            out = new BufferedOutputStream(response.getOutputStream());
            
            workbook.write(out);
            out.flush();
            
        } catch (Exception e) {
            logger.error("exception during downloading excel file : {}", e);
        } finally {
            if(out != null) out.close();
        }    
    }
	@RequestMapping("/expExcel")
	public void expExcelDownload(HttpServletRequest request ,HttpServletResponse response ,HttpSession session) throws Exception {
        
        OutputStream out = null;
        
        try {
            XSSFWorkbook workbook = a_service.expListExcelDownload();
            
            response.reset();
            response.setHeader("Content-Disposition", "attachment;filename=stbcs_history.xls");
            response.setContentType("application/vnd.ms-excel");
            out = new BufferedOutputStream(response.getOutputStream());
            
            workbook.write(out);
            out.flush();
            
        } catch (Exception e) {
            logger.error("exception during downloading excel file : {}", e);
        } finally {
            if(out != null) out.close();
        }    
    }
	
}
