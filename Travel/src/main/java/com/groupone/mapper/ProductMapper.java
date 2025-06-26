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
	public int updateProduct(ProductVO pCode);
	int insertProduct(ProductVO product);


}
