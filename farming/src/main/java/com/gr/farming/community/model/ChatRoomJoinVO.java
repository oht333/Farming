package com.gr.farming.community.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChatRoomJoinVO {
	private int joinNo;
	private int roomNo;
	private int memberNo;
	private int expertNo;
}
