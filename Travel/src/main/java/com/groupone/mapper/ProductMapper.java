package com.groupone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.groupone.common.SearchDTO;
import com.groupone.vo.ProductVO;

public interface ProductMapper {
  public ProductVO selectProduct(int pcode);
	public List<ProductVO> selectProductList(SearchDTO search);
	public List<String> selectthemeList();
	public List<String> selectcountryList();
	public int deleteProduct(int pCode);
	public int updateProduct(ProductVO product);
	int insertProduct(ProductVO product);
	
	// 유저의 찜리스트
	List<ProductVO> selectWishList(int userNo);
	
	// 최신순 상품리스트
	public List<ProductVO> selectNewProductList();

}
