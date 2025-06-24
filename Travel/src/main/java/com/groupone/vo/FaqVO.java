package com.groupone.vo;

import lombok.Data;

@Data

public class FaqVO {
	private int qcode;
	private int userNo;
	private int relationQcode;
	private String title;
	private String question;
	private int status;
	
}
