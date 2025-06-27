package com.groupone.service;

import java.util.List;

import com.groupone.vo.ProductVO;
import com.groupone.vo.UserVO;

public interface UserService {
	
	
	// 유저 고유 번호 조회
    int getUserNo(String id);

    // 유저 단건 조회
    UserVO getUserInfo(int userNo);
	
	// 회원 유무 체크, 아이디 중복 체크
	boolean userIdCheck(String id);
	
	// 로그인 기능
	boolean userLogin(String id, String pw);

	// 회원 등록
	boolean userRegister(UserVO user);
	
	// 회원 수정
	boolean userModify(UserVO user);
	
	// 비밀번호 수정
	boolean passwordUpdate(UserVO user);

	// 회원 삭제
	boolean userRemove(int userNo);
	
	// 회원 목록 조회
	List<UserVO> getUserList();
	
	// 회원 찜리스트 조회
	List<ProductVO> getWishList(int userNo);
	
	// 비밀번호 조회
	UserVO findPw(String id, String name, String phone); 
	
}
