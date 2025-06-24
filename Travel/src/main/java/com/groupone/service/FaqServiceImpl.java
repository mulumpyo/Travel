package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.common.SearchDTO;
import com.groupone.mapper.FaqMapper;
import com.groupone.vo.FaqVO;


public class FaqServiceImpl implements FaqService{
	SqlSession sqlSession = DataSource.getInstance().openSession();
	FaqMapper mapper = sqlSession.getMapper(FaqMapper.class);
	@Override
	public List<FaqVO> faqList(SearchDTO search) {
		
		return null;
	}
	@Override
	public FaqVO getFaq(int bno) {
		
		return null;
	}
	
	
	
}
