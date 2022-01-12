package com.gr.farming.community.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface ChatService {
	public int createRoom(ChatRoomDTO dto);
	public int joinRoom(ChatRoomJoinVO vo);
	public int saveMessage(ChatMessageDTO dto);
	public List<Map<String, Object>> selectRoomByMember(int memberNo);
	public List<Map<String, Object>> selectRoomByExpert(int expertNo);
	public ChatRoomDTO selectRoomNo(int roomNo);
	public List<ChatMessageDTO> selectMessageDTO(int roomNo);
	public ChatRoomJoinVO chatRoomInfo(int roomNo);
}
