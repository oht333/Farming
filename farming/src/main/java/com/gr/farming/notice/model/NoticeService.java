package com.gr.farming.notice.model;

import java.util.List;

import com.gr.farming.common.SearchVO;

public interface NoticeService {
	public int insert(NoticeVO vo);
	public List<NoticeVO> select(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public NoticeVO selectByNo(int no);
	public int update(NoticeVO vo);
	public int delete(int no);
}
