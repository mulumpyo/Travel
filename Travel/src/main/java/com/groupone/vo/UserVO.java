package com.groupone.vo;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {

	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private Date userBirth;
	private String userPhone;
	private int isAdmin;
	
}
