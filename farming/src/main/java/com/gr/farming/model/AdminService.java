package com.gr.farming.model;

import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.gr.farming.member.model.MemberVO;

public interface AdminService {
	public static final int LOGIN_OK=1;  //로그인 성공
	public static final int DISAGREE_PWD=2; //비번 불일치
	int USERID_NONE=3; //아이디 존재하지 않음
	
	public AdminVO selectByEmail(String email);
	public int loginCheck(String email, String pwd);
	public String selectPwd(String email);
	public XSSFWorkbook listExcelDownload();
	public XSSFWorkbook expListExcelDownload();
}
