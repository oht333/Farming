package com.gr.farming.request.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.farming.common.FieldSearchVO;
import com.gr.farming.field.model.FieldDetailVO;

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
	public List<Map<String, Object>> selectRequestDetail1(FieldSearchVO vo) {
		return requestDao.selectRequestDetail1(vo);
	}
	
	@Override
	public List<Map<String, Object>> selectRequestDetail2(FieldSearchVO vo) {
		return requestDao.selectRequestDetail2(vo);
	}

	@Override
	public int selectTotalRecord(FieldSearchVO vo) {
		return requestDao.selectTotalRecord(vo);
	}



	




	

}
