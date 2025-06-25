package com.groupone.service;

import java.util.List;

import com.groupone.vo.ReviewVO;

public interface ReviewService {
	 List<ReviewVO> getReview(int pcode);
}
