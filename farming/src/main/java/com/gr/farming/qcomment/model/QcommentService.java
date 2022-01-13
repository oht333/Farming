package com.gr.farming.qcomment.model;

import java.util.List;
import java.util.Map;

public interface QcommentService {
	public List<Map<String, Object>> list(int qnaNo);
	public int write(QcommentVO vo);
	public int update(QcommentVO vo);
	public int delete(int no);
}
