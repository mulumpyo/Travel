package com.groupone.service;


import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.UserMapper;
import com.groupone.vo.UserVO;

public class UserServiceImpl implements UserService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	@Override
	public UserVO login(String id, String pw) {
		return mapper.selectUser(id, pw);
	}

	@Override
	public boolean addUser(UserVO User) {
		int r=mapper.insertUser(User);
		if(r==1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}
	@Override
	public boolean getUserInfo(String id) {
		UserVO user = mapper.selectUserInfo(id);
		if(user != null) {
			return true;
		}
		return false;
	
}
	}
