package com.gr.farming.knowhow.model;

import java.sql.Timestamp;
import java.util.Date;

public class KnowHowVO {
	private int no;
	private int adminNo;
	private String name;
	private int pwd;
	private String title;
	private String content;
	private String email;
	private int readcount;
	private int groupNo;
	private String delflag;
	private String fileName;
	private long fileSize;
	private int downcount;
	private String originalFileName;
	private Timestamp regdate;
	private int boardType;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPwd() {
		return pwd;
	}
	public void setPwd(int pwd) {
		this.pwd = pwd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	
	public String getDelflag() {
		return delflag;
	}
	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public int getDowncount() {
		return downcount;
	}
	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getBoardType() {
		return boardType;
	}
	public void setBoardType(int boardType) {
		this.boardType = boardType;
	}
	
	@Override
	public String toString() {
		return "KnowHowVO [no=" + no + ", adminNo=" + adminNo + ", name=" + name + ", pwd=" + pwd + ", title=" + title
				+ ", content=" + content + ", email=" + email + ", readcount=" + readcount + ", groupNo=" + groupNo
				+ ", delflag=" + delflag + ", fileName=" + fileName + ", fileSize=" + fileSize + ", downcount="
				+ downcount + ", originalFileName=" + originalFileName + ", regdate=" + regdate + ", boardType="
				+ boardType + "]";
	}
	
}
