package com.gr.farming.request.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.FieldSearchVO;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldDetailVO;
import com.gr.farming.field.model.FieldVO;
import com.gr.farming.findExp.model.ExpertInfoVO;

@Mapper
public interface RequestDAO {
	
	public int insertRequest(RequestVO vo);
	public int insertRequestDevelop(RequestDevelopVO vo);
	public int insertRequestDesign(RequestDesignVO vo);
	public List<RequestQnaVO> selectRequestQna(int categoryNo);
	public List<Map<String, Object>> selectQuestion(int categoryNo);
	public List<Map<String, Object>> selectAnswer(int qNo);
	List<Map<String, Object>> selectReceivedRequest(int expertNo);
	List<Map<String, Object>> selectRequestDetail1(FieldSearchVO vo);
	List<Map<String, Object>> selectRequestDetail2(FieldSearchVO vo);
	int selectTotalRecord(FieldSearchVO vo);
	
}
