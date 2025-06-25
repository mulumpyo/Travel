package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.UserMapper;
import com.groupone.vo.UserVO;

public class UserServiceImpl implements UserService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);

	@Override
	public boolean userIdCheck(String id) {
		UserVO user = mapper.selectUserInfo(id);
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean userLogin(String id, String pw) {
		UserVO user = mapper.selectUser(id, pw);
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean userRegister(UserVO user) {
		int r = mapper.insertUser(user);
		if (r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean userModify(UserVO user) {
		int r = mapper.updateUser(user);
		if (r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean userRemove(int userNo) {
		int r = mapper.deleteUser(userNo);
		if (r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean isAdmin(int userNo) {
		UserVO user = mapper.selectIsAdmin(userNo);
		if (user.getIsAdmin() == 1) {
			return true;
		}
		return false;
	}

	@Override
	public List<UserVO> getUserList() {
		return mapper.selectUserList();
	}

}
