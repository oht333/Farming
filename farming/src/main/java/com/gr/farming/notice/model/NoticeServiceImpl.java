package com.gr.farming.notice.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.farming.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService{
	private final NoticeDAO noticeDao;
	
	
	
	@Autowired
	public NoticeServiceImpl(NoticeDAO noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override
	public int insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return noticeDao.insert(vo);
	}

	@Override
	public List<NoticeVO> select(SearchVO searchVo) {
		// TODO Auto-generated method stub
		return noticeDao.select(searchVo);
	}

	

	@Override
	public NoticeVO selectByNo(int no) {
		// TODO Auto-generated method stub
		return noticeDao.selectByNo(no);
	}

	@Override
	public int update(NoticeVO vo) {
		// TODO Auto-generated method stub
		return noticeDao.update(vo);
	}

	@Override
	public int delete(int no) {
		// TODO Auto-generated method stub
		return noticeDao.delete(no);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		// TODO Auto-generated method stub
		return noticeDao.selectTotalRecord(searchVo);
	}
	
}
