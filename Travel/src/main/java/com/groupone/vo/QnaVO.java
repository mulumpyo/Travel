package com.groupone.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnaVO {
	private int qCode;      // 고유번호
	private int userNo;     // 유저번호
	private int relationQcode;  // 질문의 고유번호
	private String type;     //분류
	private String title;     // 제목
	private String question;  // 내용
	private int status;       //답변상태
	private Date qDate;       //날짜

}
