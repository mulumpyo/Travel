package com.groupone.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AnswerVO {
	public int qCode;
	public int userNo;
	public String writer;
	public String answer;
	public Date aDate;
}
