package com.gr.farming.expert.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExpertServiceImpl implements ExpertService{
	private ExpertDAO dao;
	
	@Autowired
	public ExpertServiceImpl(ExpertDAO dao) {
		this.dao = dao;
	}
	
	public int insert(ExpertVO vo) {
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
		if(dbPwd == null || dbPwd.isEmpty()) {
			result=USERID_NONE;
		}else {
			if(dbPwd.equals(pwd)) {
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
}
