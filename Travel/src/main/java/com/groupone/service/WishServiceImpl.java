package com.groupone.service;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;


public class WishServiceImpl implements WishService {
	
	
    SqlSession sqlSession = DataSource.getInstance().openSession();
    WishMapper mapper = sqlSession.getMapper(WishMapper.class);
	
	@Override
	public boolean isWish(int userNo, int pCode) {
		
		return mapper.selectWish(userNo, pCode) == 1;
	}
}
