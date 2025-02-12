package com.gr.farming.community.model;


import org.springframework.web.socket.WebSocketSession;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;


@Getter
@Setter
public class ChatRoomDTO {

//    private String roomId;
    private String name;
    private Set<WebSocketSession> sessions = new HashSet<>();
    //WebSocketSession은 Spring에서 Websocket Connection이 맺어진 세션

    private int roomNo;
    private String roomName;

    public static ChatRoomDTO create(String name){
        ChatRoomDTO room = new ChatRoomDTO();

		/* room.roomId = UUID.randomUUID().toString(); */
        room.roomName = name;
        System.out.println("roomNo : "+room.roomNo);
        return room;
    }

}
