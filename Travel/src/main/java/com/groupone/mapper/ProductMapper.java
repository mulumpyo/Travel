package com.groupone.mapper;

import com.groupone.vo.ProductVO;

import java.util.List;

import com.groupone.common.SearchDTO;

public interface ProductMapper {
  public ProductVO selectProduct(int pcode);
	public List<ProductVO> selectProductList(SearchDTO search);
	public List<String> selectthemeList();
	public List<String> selectcountryList();

}
