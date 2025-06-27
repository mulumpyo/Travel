package com.groupone.service;

import java.util.List;


import com.groupone.vo.QnaVO;

public interface QnaService {
	public List<QnaVO> selectEvent();
	public boolean addQna(QnaVO bno);  // 등록
	
	//list
	public List<QnaVO> qnaList();
	
	public List<QnaVO> getqna(String kw);   //단건조회
}
