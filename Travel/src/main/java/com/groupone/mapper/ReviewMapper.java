package com.groupone.mapper;

import java.util.List;

import com.groupone.vo.ReviewVO;

public interface ReviewMapper {
	 List<ReviewVO> selectReview(int pcode);
}
