package com.gr.farming.community.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChatDAO {
	//방만들기
	public int createRoom(ChatRoomDTO dto);
	//방참여
	public int joinRoom(ChatRoomJoinVO vo);
	//메시지
	public int saveMessage(ChatMessageDTO dto);
	
	//방목록 조회
	public List<Map<String, Object>> selectRoomByMember(int memberNo);
	public List<Map<String, Object>> selectRoomByExpert(int expertNo);
	
	public ChatRoomDTO selectRoomNo(int roomNo);
	
	public List<ChatMessageDTO> selectMessageDTO(int roomNo);
}
