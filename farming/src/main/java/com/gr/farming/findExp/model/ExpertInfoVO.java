package com.gr.farming.findExp.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ExpertInfoVO {

	private int expertInfoCode; /* 이력서 코드 */
	private int categoryNo; /* 카테고리 번호 */
	private int expertNo; /* 개발자 번호 */
	private String intro; /* 간편 소개 */
	private String detailInfo; /* 상세소개 */
	private String career; /* 경력사항 */
	private String staff; /* 직원수 */
	private String certification;/* 본인인증 */
	private String contactTime;  /* 연락가능시간 */
	private String payMethod;  /* 결제방법 */
	private String businessLicense; /* 사업자등록증 */
	private String license; /* 자격증 */
	private String taxInvoice; /* 세금계산서 발행여부 */
	private String imageVideo; /* 이미지, 동영상 파일 이름 */
	private String portfolio;  /* 포트폴리오 링크 */
	private float reviewRate; /* 후기 별점 */
	
	@Override
	public String toString() {
		return "ExpertInfoVO [expertInfoCode=" + expertInfoCode + ", categoryNo=" + categoryNo + ", expertNo="
				+ expertNo + ", intro=" + intro + ", detailInfo=" + detailInfo + ", career=" + career + ", staff="
				+ staff + ", certification=" + certification + ", contactTime=" + contactTime + ", payMethod="
				+ payMethod + ", businessLicense=" + businessLicense + ", license=" + license + ", taxInvoice="
				+ taxInvoice + ", imageVideo=" + imageVideo + ", portfolio=" + portfolio + ", reviewRate=" + reviewRate
				+ "]";
	}
	
}
