package com.groupone.service;

import java.util.List;
import com.groupone.common.SearchDTO;
import com.groupone.vo.ProductVO;

public interface ProductService {
  
  ProductVO getProduct(int pcode);
	List<ProductVO> productList();
  
	public List<ProductVO> productList(SearchDTO search);
	public List<String> themeList();
	public List<String> countryList();
}
