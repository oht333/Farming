package com.gr.farming.qcomment.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QcommentVO {
	private int qcommentNo;
	private int memberNo;
	private int qnaNo;
	private String content;
	private Timestamp regdate;
}
