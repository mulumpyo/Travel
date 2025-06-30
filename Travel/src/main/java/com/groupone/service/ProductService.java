package com.groupone.service;

import java.util.List;
import com.groupone.common.SearchDTO;
import com.groupone.vo.ProductVO;

public interface ProductService {

	public ProductVO getProduct(int pcode);

	public List<ProductVO> productList(SearchDTO search);

	public List<String> themeList();

	public List<String> countryList();
	
	public boolean removeProduct(int pCode);

	public boolean modifyProduct(ProductVO product);
  
	// 상품 등록 기능 구현 (성공여부 반환)
	boolean addProduct(ProductVO product);

	public List<ProductVO> newProductList();
  
}
