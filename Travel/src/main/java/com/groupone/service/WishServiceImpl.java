package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.WishMapper;
import com.groupone.vo.ProductVO;
import com.groupone.vo.WishVO;

public class WishServiceImpl implements WishService {

	SqlSession session = DataSource.getInstance().openSession(true);
    WishMapper mapper = session.getMapper(WishMapper.class);
	
	@Override
	public List<ProductVO> getWishList(int userNo) {
		
		return mapper.selectWishList(userNo);
	}
	@Override
	public boolean addWish(WishVO wish) {
		int r = mapper.insertWish(wish);
		if (r == 1) {
			session.commit();
			return true;
		}
		return false;
	}
	@Override
	public boolean removeWish(int userNo, int pCode) {
		int r = mapper.deleteWish(userNo, pCode);
		if (r > 0) {
			session.commit();
			return true;
		}
		return false;
	}

}
