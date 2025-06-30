package com.groupone.service;

import java.util.List;
import com.groupone.common.SearchDTO;
import com.groupone.vo.ProductVO;

public interface ProductService {

	// 노출 상품 조회
	public ProductVO getProduct(int pcode);
	
	// 어드민 페이지 상품 단건조회
	public ProductVO getProductAdmin(int pCode);

	public List<ProductVO> productList(SearchDTO search);

	public List<String> themeList();

	public List<String> countryList();
	
	public boolean removeProduct(int pCode);

	public boolean modifyProduct(ProductVO product);
  
	// 상품 등록 기능 구현 (성공여부 반환)
	boolean addProduct(ProductVO product);

	public List<ProductVO> newProductList();

	// 조건 없이 모든 상품 조회 (어드민 페이지)
	public List<ProductVO> productListAll(SearchDTO search);


  
}
