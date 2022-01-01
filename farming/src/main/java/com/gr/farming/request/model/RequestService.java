package com.gr.farming.request.model;

import java.util.List;
import java.util.Map;

public interface RequestService {

	public int insertRequestDevelop(RequestDevelopVO vo);
	public int insertRequestDesign(RequestDesignVO vo);
//	public RequestQnaVO selectRequestQna(int categoryNo);
	public List<RequestQnaVO> selectRequestQna(int categoryNo);
	public List<Map<String, Object>> selectQuestion(int categoryNo);
	public List<Map<String, Object>> selectAnswer(int qNo);
	public int insertRequestClient(RequestClientVO vo);
}
