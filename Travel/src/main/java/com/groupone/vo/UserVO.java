package com.groupone.vo;

import java.util.Date;

import lombok.Data;
@Data
public class UserVO {

	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private Date userbirth;
	private String userphone;
	private int isAdmin;
}
