package com.groupone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.groupone.vo.ProductVO;
import com.groupone.vo.UserVO;


public interface UserMapper {
	
	public UserVO selectUser(@Param("id") String id, @Param("pw") String pw);
	
	public UserVO selectUserWithId(String id);
	
	public UserVO selectUserInfo(int userNo);
	
	public int insertUser(UserVO user);

	public int updateUser(UserVO user);

	public int deleteUser(int userNo);
	
	public int passwordUpdate(UserVO user);

	public List<UserVO> selectUserList();
	
	public List<ProductVO> selectWishList(int userNo);

	
	public int selectWish(@Param("userNo") int userNo, @Param("pCode") int pCode);

}
