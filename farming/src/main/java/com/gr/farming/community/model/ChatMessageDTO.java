package com.gr.farming.community.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChatMessageDTO {

    private String writer;
    
    private String message;
    
    private int messageNo;
    private Timestamp time;
    private int userNo;
    private int roomNo;
    
}