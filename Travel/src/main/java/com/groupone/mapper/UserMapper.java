package com.groupone.mapper;

import org.apache.ibatis.annotations.Param;

import com.groupone.vo.UserVO;


public interface UserMapper {
	public UserVO selectUser(@Param("id") String id, @Param("pw") String pw);
	
	public int insertUser(UserVO User);//추가
	
	public UserVO selectUserInfo(String id);//로그인 아이디 조회

}
