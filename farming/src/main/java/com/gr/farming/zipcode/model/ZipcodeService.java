package com.gr.farming.zipcode.model;

import java.util.List;

public interface ZipcodeService {
	public List<ZipcodeVO> selectZipcode(String dong);
}
