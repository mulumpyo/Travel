package com.groupone.mapper;

import java.util.List;

import com.groupone.common.SearchDTO;
import com.groupone.vo.ProductVO;

public interface ProductMapper {
	public List<ProductVO> selectProductList(SearchDTO search);
	public List<String> selectthemeList();
	public List<String> selectcountryList();

}
