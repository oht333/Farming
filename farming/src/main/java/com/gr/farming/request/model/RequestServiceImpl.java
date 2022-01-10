package com.gr.farming.request.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RequestServiceImpl implements RequestService{
	
	private final RequestDAO requestDao;
	
	@Autowired
	public RequestServiceImpl(RequestDAO requestDao) {
		this.requestDao = requestDao;
	}

	@Override
	public int insertRequest(RequestVO vo) {
		return requestDao.insertRequest(vo);
	}
	
	public int insertRequestDevelop(RequestDevelopVO vo) {
		return requestDao.insertRequestDevelop(vo);
	}
	
	public int insertRequestDesign(RequestDesignVO vo) {
		return requestDao.insertRequestDesign(vo);
	}

	@Override
	public List<Map<String, Object>> selectQuestion(int categoryNo) {
		return requestDao.selectQuestion(categoryNo);
	}
	
	@Override
	public List<Map<String, Object>> selectAnswer(int qNo) {
		return requestDao.selectAnswer(qNo);
	}

	@Override
	public List<RequestQnaVO> selectRequestQna(int categoryNo) {
	return requestDao.selectRequestQna(categoryNo);
}

	@Override
	public List<Map<String, Object>> selectReceivedRequest(int expertNo) {
		return requestDao.selectReceivedRequest(expertNo);
	}

	@Override
	public Map<String, Object> selectRequestDetail(int detailNo) {
		return requestDao.selectRequestDetail(detailNo);
	}

	




	

}
