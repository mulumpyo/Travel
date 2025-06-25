package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.ProductMapper;
import com.groupone.vo.ProductVO;

public class ProductServiceImpl implements ProductService {

	SqlSession sqlSession = DataSource.getInstance().openSession();
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
    @Override
    public ProductVO getProduct(int pcode) {
    	return mapper.selectProduct(pcode);
    }
  
  	@Override
  	public List<ProductVO> productList() {
	  //return mapper.selectProductList();
  		return (List<ProductVO>) mapper.selectProduct(1);
  	}
}
