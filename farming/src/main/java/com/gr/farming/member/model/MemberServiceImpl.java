package com.gr.farming.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{		
	private final MemberDAO memberDao;
	
	@Autowired
	private PasswordEncoder pwdEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDao) { 
		this.memberDao = memberDao; 
	}
	
	
	public int insert(MemberVO vo) {
		vo.setAddress1("");
		vo.setAddress2("");
		vo.setZipCode("");
		
		vo.setPwd(pwdEncoder.encode(vo.getPwd()));
		
		int cnt=memberDao.insert(vo);
		return cnt;
	}
	
	public int duplicatedId(String email) {
		int count=memberDao.duplicatedId(email);
		
		int result=0;
		if(count>0) {  //해당 아이디가 이미 존재함
			result=EXIST_ID;
		}else {
			result=NON_EXIST_ID;			
		}
		
		return result;
	}
	
	public int loginCheck(String email, String pwd){
		String dbPwd = memberDao.selectPwd(email);
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
	
	public MemberVO selectByEmail(String email)  {
		return memberDao.selectByEmail(email);
	}
	
	public int updateMember(MemberVO vo) {
		return memberDao.updateMember(vo);
	}
	
	public int withdrawMember(String email) {
		return memberDao.withdrawMember(email);
	}

	public List<MemberVO> selectAll() {
		return memberDao.selectAll();
	}

	@Override
	public boolean checkPwd(MemberVO vo) {
		String mPwd = memberDao.selectPwd(vo.getEmail());
		
		if(mPwd.equals(vo.getPwd())) {
			return true;
		}else {
			return false;
		}
	}

	public int delete(MemberVO vo) {
		return memberDao.delete(vo);
	}
	
	public int updatePwd(String email, String pwd) {
		pwd = pwdEncoder.encode(pwd);
		return memberDao.updatePwd(email, pwd);
	}
	
	public MemberVO selectByNo(int memberNo) {
		return memberDao.selectByNo(memberNo);
	}
}
