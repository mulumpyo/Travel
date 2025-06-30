package com.groupone.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.groupone.vo.QnaVO;

public interface QnaMapper {
	public List<QnaVO> selectEvent();
	public int insertBoard(QnaVO bno);
	
	//qnaList
	public int selectTotal();
	public List<QnaVO> selectQnaList();

	public List<QnaVO> selectKeyword(@Param("userNo") int userNo, @Param("keyword") String keyword);
	public QnaVO selectMyQna(int qCode);
	public int updateQna(QnaVO qna);
	
	public List<QnaVO> selectListWithUserNo(int userNo); 
	
	public int deleteList(int qCode);  // 삭제
	
}
