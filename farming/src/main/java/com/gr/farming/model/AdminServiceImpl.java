package com.gr.farming.model;

import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.gr.farming.expert.model.ExpertDAO;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.member.model.MemberDAO;
import com.gr.farming.member.model.MemberService;
import com.gr.farming.member.model.MemberVO;

@Service
public class AdminServiceImpl implements AdminService{
	private AdminDAO dao;
	private MemberDAO mDao;
	private ExpertDAO eDao;
	@Autowired
	private PasswordEncoder pwdEncoder;

	@Autowired
	public AdminServiceImpl(AdminDAO dao, MemberDAO mDao, ExpertDAO eDao) {
		this.dao = dao;
		this.mDao = mDao;
		this.eDao = eDao;
	}
	
	public AdminVO selectByEmail(String email) {
		return dao.selectByEmail(email);
	}
	public String selectPwd(String email){
		return dao.selectPwd(email);
	}
	public int loginCheck(String email, String pwd) {
		String dbPwd = dao.selectPwd(email);
		int result=0;
		System.out.println("dbPwd : "+dbPwd);
		System.out.println("pwd : "+pwd);
		if(dbPwd == null || dbPwd.isEmpty()) {
			result=USERID_NONE;
		}else {
			if(pwd.equals(dbPwd)) {
				result=LOGIN_OK;
			}else {
				result=DISAGREE_PWD;
			}
		}
		
		return result;
	}
	public XSSFWorkbook listExcelDownload() {
		XSSFWorkbook workbook = new XSSFWorkbook();
        
        XSSFSheet sheet = workbook.createSheet("회원");
        
        XSSFRow row = null;
        
        XSSFCell cell = null;
        List<MemberVO> list = mDao.select();
        row = sheet.createRow(0);
        String[] headerKey = {"회원번호", "이름", "이메일", "주소", "상세주소", "우편번호", "가입일"};
        
        for(int i=0; i<headerKey.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(headerKey[i]);
        }
        
        for(int i=0; i<list.size(); i++) {
            row = sheet.createRow(i + 1);
            MemberVO vo = list.get(i);
            
            cell = row.createCell(0);
            cell.setCellValue(vo.getMemberNo());
            
            cell = row.createCell(1);
            cell.setCellValue(vo.getName());
            
            cell = row.createCell(2);
            cell.setCellValue(vo.getEmail());
            
            cell = row.createCell(3);
            cell.setCellValue(vo.getAddress1());
            
            cell = row.createCell(4);
            cell.setCellValue(vo.getAddress2());
            
            cell = row.createCell(5);
            cell.setCellValue(vo.getZipCode());
            
            cell = row.createCell(6);
            cell.setCellValue(vo.getRegDate());
        }
        
        return workbook;
	}
	
	public XSSFWorkbook expListExcelDownload() {
		XSSFWorkbook workbook = new XSSFWorkbook();
        
        XSSFSheet sheet = workbook.createSheet("전문가");
        
        XSSFRow row = null;
        
        XSSFCell cell = null;
        List<ExpertVO> list = eDao.select();
        row = sheet.createRow(0);
        String[] headerKey = {"전문가번호", "이름", "이메일", "주소", "상세주소", "우편번호", "가입일"};
        
        for(int i=0; i<headerKey.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(headerKey[i]);
        }
        
        for(int i=0; i<list.size(); i++) {
            row = sheet.createRow(i + 1);
            ExpertVO vo = list.get(i);
            
            cell = row.createCell(0);
            cell.setCellValue(vo.getExpertNo());
            
            cell = row.createCell(1);
            cell.setCellValue(vo.getName());
            
            cell = row.createCell(2);
            cell.setCellValue(vo.getEmail());
            
            cell = row.createCell(3);
            cell.setCellValue(vo.getAddress1());
            
            cell = row.createCell(4);
            cell.setCellValue(vo.getAddress2());
            
            cell = row.createCell(5);
            cell.setCellValue(vo.getZipCode());
            
            cell = row.createCell(6);
            cell.setCellValue(vo.getRegDate());
        }
        
        return workbook;
	}
}
