package com.groupone.service;

import java.util.List;

import com.groupone.vo.ProductVO;
import com.groupone.vo.WishVO;

public interface WishService {
	
	// 찜리스트
	List<ProductVO> getWishList(int userNo);
	
	// 찜하기
	boolean addWish(WishVO wish);
	
	// 찜 삭제
	boolean removeWish(int userNo, int pCode);
	
	
	
}
