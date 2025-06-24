package com.groupone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.groupone.vo.UserVO;


public interface UserMapper {
	
	public UserVO selectUser(@Param("id") String id, @Param("pw") String pw);
	
	public int insertUser(UserVO User);
	
	public UserVO selectUserInfo(String id);

	public int updateUser(UserVO user);

	public int deleteUser(int userNo);

	public UserVO selectIsAdmin(int userNo);

	public List<UserVO> selectUserList();

}
