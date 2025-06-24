package com.groupone.service;

import java.util.List;

import com.groupone.vo.UserVO;

public interface UserService {
	
	// 회원 유무 체크, 아이디 중복 체크
	boolean userIdCheck(String id);
	
	// 로그인 기능
	UserVO userLogin(String id, String pw);

	// 회원 등록
	boolean userRegister(UserVO user);
	
	// 회원 수정
	boolean userModify(UserVO user);
	
	// 회원 삭제
	boolean userRemove(int userNo);
	
	// 회원 권한 조회
	boolean isAdmin(int userNo);
	
	// 회원 목록 조회
	List<UserVO> getUserList();
	
}
