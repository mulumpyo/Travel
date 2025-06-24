package com.groupone.mapper;

import java.util.List;

import com.groupone.vo.FaqVO;

public interface FaqMapper {
	public List<FaqVO> selectList();
	public FaqVO selectFaq(int bno);
	

}
