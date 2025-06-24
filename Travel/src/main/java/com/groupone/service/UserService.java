package com.groupone.service;

import com.groupone.vo.UserVO;

public interface UserService {

	public UserVO login(String id, String pw);
	// 회원목록.

	//회원등록
	public boolean addUser(UserVO member);
	//조회
	public boolean getUserInfo(String id);
}
