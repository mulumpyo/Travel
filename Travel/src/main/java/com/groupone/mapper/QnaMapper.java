package com.groupone.mapper;

import java.util.List;

import com.groupone.vo.QnaVO;

public interface QnaMapper {
	public List<QnaVO> selectEvent();
	public int insertBoard(QnaVO bno);
	
	//qnaList
	public int selectTotal();
	public List<QnaVO> selectQnaList();

	public List<QnaVO> selectKeyword(String kw);
	
}
