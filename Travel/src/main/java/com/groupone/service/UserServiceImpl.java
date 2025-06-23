package com.groupone.service;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.UserMapper;

public class UserServiceImpl
				implements UserService {

	SqlSession sqlSession = DataSource.getInstance().openSession();
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	
	@Override
    public boolean userCheck(String id) {
	    return mapper.selectCheckUser(id) == 1;
    }

}
