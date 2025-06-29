package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.common.SearchDTO;
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
	
	@Override
	public boolean removeProduct(int pCode) {
		
		int r = mapper.deleteProduct(pCode);
		if (r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public boolean modifyProduct(ProductVO product) {
		int r = mapper.updateProduct(product);
		if (r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;	
		}

	@Override
	public boolean addProduct(ProductVO product) {
		
		int r = mapper.insertProduct(product);
		if (r == 1) {
			return true;
		}
		return false;
	}

	@Override
	public List<ProductVO> getWishList(int userNo) {
		
		return mapper.selectWishList(userNo);
	}

	@Override
	public List<ProductVO> newProductList() {
		return mapper.selectNewProductList();
	}


}
