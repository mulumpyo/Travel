package com.groupone.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.UserMapper;
import com.groupone.vo.ProductVO;
import com.groupone.vo.UserVO;

public class UserServiceImpl implements UserService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);

	@Override
	public boolean userIdCheck(String id) {
		UserVO user = mapper.selectUserWithId(id);
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	public int getUserNo(String id) {
		UserVO user = mapper.selectUserWithId(id);
		return user.getUserNo();
	}

	@Override
	public UserVO getUserInfo(int userNo) {
		return mapper.selectUserInfo(userNo);
	}

	@Override
	public boolean userLogin(String id, String pw) {
		if (mapper.selectUser(id, pw) != null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean userRegister(UserVO user) {
		int r = mapper.insertUser(user);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean userModify(UserVO user) {
		int r = mapper.updateUser(user);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean userRemove(int userNo) {
		int r = mapper.deleteUser(userNo);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public List<UserVO> getUserList() {
		return mapper.selectUserList();
	}

	@Override
	public List<ProductVO> getWishList(int userNo) {
		return mapper.selectWishList(userNo);
	}

	@Override
	public boolean passwordUpdate(UserVO user) {
		int r = mapper.passwordUpdate(user);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override // 비밀번호 찾기
	public UserVO findPw(String id, String name, String phone) {
		return mapper.findPw(id, name, phone);
	}
}
