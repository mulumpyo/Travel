package com.groupone.service;

import java.util.List;

import com.groupone.vo.AnswerVO;
import com.groupone.vo.QnaVO;

public interface QnaService {
	public List<QnaVO> selectEvent();
	public boolean addQna(QnaVO bno);  // 등록
	
	//list
	public List<QnaVO> qnaList();
	
	public List<QnaVO> getqna(int userNo, String kw);   
	
	//단건조회
	QnaVO getQnaOne(int qCode);
	
	public boolean modifyqna(QnaVO qna);
	
	// UserNo의 Qna List를 반환
	public List<QnaVO> qnaListWithUserNo(int userNo); 
	
	
	//삭제
	public boolean removeQna(int qCode);
	
	
	public boolean addAnswer(List<AnswerVO> answer);
	
}
