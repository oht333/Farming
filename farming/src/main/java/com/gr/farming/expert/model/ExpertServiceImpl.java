package com.gr.farming.expert.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class ExpertServiceImpl implements ExpertService{
	private ExpertDAO dao;
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
	@Autowired
	public ExpertServiceImpl(ExpertDAO dao) {
		this.dao = dao;
	}
	
	public int insert(ExpertVO vo) {
		vo.setAddress1("");
		vo.setAddress2("");
		vo.setZipCode("");
		//회원가입시 패스워드 암호화
		vo.setPwd(pwdEncoder.encode(vo.getPwd()));
		return dao.insert(vo);
	}
	
	public int duplicatedId(String email) {
		int count=dao.duplicatedId(email);
		
		int result=0;
		if(count>0) {  //해당 아이디가 이미 존재함
			result=EXIST_ID;
		}else {
			result=NON_EXIST_ID;			
		}
		
		return result;
	}
	
	public int loginCheck(String email, String pwd){
		String dbPwd = dao.selectPwd(email);
		int result=0;
		System.out.println("dbPwd : "+dbPwd);
		System.out.println("pwd : "+pwd);
		if(dbPwd == null || dbPwd.isEmpty()) {
			result=USERID_NONE;
		}else {
			if(pwdEncoder.matches(pwd, dbPwd)) {
				result=LOGIN_OK;
			}else {
				result=DISAGREE_PWD;
			}
		}
		
		return result;
	}
	
	public ExpertVO selectByEmail(String email) {
		return dao.selectByEmail(email);
	}

	public int updatePwd(String email, String pwd) {
		pwd = pwdEncoder.encode(pwd);
		return dao.updatePwd(email, pwd);

	}
	
	public List<ExpertVO> selectAll() {
		return dao.selectAll();
	}

	public int updateExpert(ExpertVO vo) {
		vo.setPwd(pwdEncoder.encode(vo.getPwd()));
		return dao.updateExpert(vo);
	}

	public boolean checkPwd(ExpertVO vo) {
		String ePwd = dao.selectPwd(vo.getEmail());
		
		if(ePwd.equals(vo.getPwd())) {
			return true;
		}else {
			return false;
		}

	}

	public int delete(ExpertVO vo) {
		return dao.delete(vo);
	}
	
	public String selectMain(int expertNo){
		return dao.selectMain(expertNo);
	}
	public int selectCategory(int expertNo) {
		return dao.selectCategory(expertNo);
	}
}
