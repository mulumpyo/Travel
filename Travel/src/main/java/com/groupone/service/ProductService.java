package com.groupone.service;

import java.util.List;
import com.groupone.vo.ProductVO;

public interface ProductService {
  
    ProductVO getProduct(int pcode);
	  List<ProductVO> productList();
  
}
