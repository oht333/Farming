package com.gr.farming.community.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.farming.community.model.ChatMessageDTO;
import com.gr.farming.community.model.ChatService;
import com.gr.farming.member.model.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class StompChatController {

	private final SimpMessagingTemplate template; //특정 Broker로 메세지를 전달
	@Autowired
	private ChatService service;
	private MemberService mservice;
	
	//Client가 SEND할 수 있는 경로
	//stompConfig에서 설정한 applicationDestinationPrefixes와 @MessageMapping 경로가 병합됨
	//"/pub/chat/enter"
	@MessageMapping(value = "/chat/enter")
	public void enter(ChatMessageDTO message){
		message.setMessage(message.getWriter() + "님이 채팅방에 참여하였습니다.");
		template.convertAndSend("/sub/chat/room/" + message.getRoomNo(), message);
	}

	@MessageMapping(value = "/chat/message")
	public void message(ChatMessageDTO message){
		template.convertAndSend("/sub/chat/room/" + message.getRoomNo(), message);
	}
	
	@PostMapping("/chat/save")
	public String save(@RequestParam("message") String message,@RequestParam("userNo") int userNo,@RequestParam(
			"roomNo") int roomNo, @RequestParam("username") String username) {

		System.out.println("msg : "+message+", userNo : "+userNo+", roomNo : "+roomNo+", writer : "+username);
		
		ChatMessageDTO dto = new ChatMessageDTO();
		dto.setMessage(message);
		dto.setRoomNo(roomNo);
		dto.setUserNo(userNo);
		dto.setWriter(username);
		
		
		
		int cnt = service.saveMessage(dto);
		if(cnt > 0) {
			System.out.println("메시지저장");
		} else {
			System.out.println("실패");
		}
		
		return "chat/room";
	}
}
