package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.common.SearchDTO;
import com.groupone.mapper.ProductMapper;
import com.groupone.vo.ProductVO;

public class ProductServiceImpl implements ProductService{

	SqlSession sqlSession = DataSource.getInstance().openSession();
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productList(SearchDTO search) {
		return mapper.selectProductList(search);
	}

	@Override
	public List<String> themeList() {
		return mapper.selectthemeList();
	}

	@Override
	public List<String> countryList() {
		return mapper.selectcountryList();
	}


}
