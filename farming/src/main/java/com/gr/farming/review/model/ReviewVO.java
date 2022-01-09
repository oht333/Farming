package com.gr.farming.review.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {

	private int reviewNo; /* 이용후기 번호 */
	private int expertNo; /* 전문가 번호 */
	private int memberNo; /* 전문가 번호 */
	private String content; /* 내용 */
	private String fileName; /* 파일명 */
	private String originalfilename; /* 원본파일명 */
	private Timestamp regdate; /* 작성일 */
	private float rate; /* 별점 */
	
	@Override
	public String toString() {
		return "ReviewVO [reviewNo=" + reviewNo + ", expertNo=" + expertNo + ", memberNo=" + memberNo + ", content="
				+ content + ", fileName=" + fileName + ", originalfilename=" + originalfilename + ", regdate=" + regdate
				+ ", rate=" + rate + "]";
	}
	
}
