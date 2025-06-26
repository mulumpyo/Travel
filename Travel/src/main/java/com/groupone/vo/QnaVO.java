package com.groupone.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnaVO {
	private int qCode;
	private int userNo;
	private int relationQcode;
	private String type;
	private String title;
	private String question;
	private int status;
	private Date qDate;

}
