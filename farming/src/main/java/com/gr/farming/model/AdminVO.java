package com.gr.farming.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminVO {
	private int adminNo;
	private String name;
	private String email;
	private String pwd;
}
