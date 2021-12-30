package com.gr.farming.request.model;

import java.util.List;

public class RequestQnaListVO {

	private List<RequestQnaVO> reQnaItems;

	public List<RequestQnaVO> getReQnaItems() {
		return reQnaItems;
	}

	public void setReQnaItems(List<RequestQnaVO> reQnaItems) {
		this.reQnaItems = reQnaItems;
	}

	@Override
	public String toString() {
		return "RequestQnaListVO [reQnaItems=" + super.toString() + "]";
	}
	
}
