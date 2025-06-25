package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.ReviewMapper;
import com.groupone.vo.ReviewVO;

public class ReviewServiceImpl implements ReviewService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
    ReviewMapper mapper = session.getMapper(ReviewMapper.class);
    
	@Override
	public List<ReviewVO> getReview(int pcode) {
		// TODO Auto-generated method stub
		 return mapper.selectReview(pcode);
	}

}
