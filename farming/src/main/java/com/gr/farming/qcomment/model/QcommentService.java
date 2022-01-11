package com.gr.farming.qcomment.model;

import java.util.List;

public interface QcommentService {
	public List<QcommentVO> list(int qnaNo);
	public int write(QcommentVO vo);
	public int update(QcommentVO vo);
	public int delete(int no);
}
