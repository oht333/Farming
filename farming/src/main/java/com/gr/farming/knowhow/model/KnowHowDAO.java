package com.gr.farming.knowhow.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.farming.common.SearchVO;

@Mapper
public interface KnowHowDAO {
	List<KnowHowVO> selectKnowhowAll();
	public int insertKnowhow(KnowHowVO vo);

}
