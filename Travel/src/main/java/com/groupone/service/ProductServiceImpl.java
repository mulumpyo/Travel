package com.groupone.service;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.ProductMapper;
import com.groupone.mapper.UserMapper;
import com.groupone.vo.ProductVO;

public class ProductServiceImpl implements ProductService {

	SqlSession sqlSession = DataSource.getInstance().openSession();
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
    @Override
    public ProductVO getProduct(int pcode) {
    	return mapper.selectProduct(pcode);
    }
}