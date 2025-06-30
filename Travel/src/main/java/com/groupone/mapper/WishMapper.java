package com.groupone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.groupone.vo.ProductVO;
import com.groupone.vo.WishVO;

public interface WishMapper {
	
	// 찜리스트 조회
	List<ProductVO> selectWishList(int userVO);
	
	
	// 찜하기
	int insertWish(WishVO wish);

	// 찜삭제
	int deleteWish(@Param("userNo") int userNo, @Param("pCode") int pCode);
}
