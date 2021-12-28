package com.gr.farming.request.model;

import java.util.List;

public interface RequestService {

	public int insertRequestDevelop(RequestDevelopVO vo);
	public List<RequestQnaVO> selectByCategoryNo(int categoryNo);
}
