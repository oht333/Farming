package com.gr.farming.community.model;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService{
	private ChatDAO dao;
	
	@Autowired
	public ChatServiceImpl(ChatDAO dao) {
		this.dao = dao;
	}

	public int createRoom(ChatRoomDTO dto) {
		return dao.createRoom(dto);
	}
	public int joinRoom(ChatRoomJoinVO vo) {
		return dao.joinRoom(vo);
	}
	public int saveMessage(ChatMessageDTO dto) {
		return dao.saveMessage(dto);
	}
	public List<Map<String, Object>> selectRoomByMember(int memberNo) {
		return dao.selectRoomByMember(memberNo);
	}
	public List<Map<String, Object>> selectRoomByExpert(int expertNo) {
		return dao.selectRoomByExpert(expertNo);
	}
	public ChatRoomDTO selectRoomNo(int roomNo) {
		return dao.selectRoomNo(roomNo);
	}
	
	public List<ChatMessageDTO> selectMessageDTO(int roomNo){
		return dao.selectMessageDTO(roomNo);
	}
	public ChatRoomJoinVO chatRoomInfo(int roomNo) {
		return dao.chatRoomInfo(roomNo);
	}
}
