package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.QnaMapper;
import com.groupone.vo.AnswerVO;
import com.groupone.vo.QnaVO;

public class QnaServiceImpl implements QnaService{
	SqlSession sqlSession = DataSource.getInstance().openSession();
	QnaMapper mapper = sqlSession.getMapper(QnaMapper.class);
	
	
	@Override
	public List<QnaVO> selectEvent() {
		
		return null;
	}
	@Override
	public boolean addQna(QnaVO bno) {
		int r = mapper.insertBoard(bno);
		if( r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}

	@Override
	public List<QnaVO> getqna(int userNo, String kw) {
		return mapper.selectKeyword(userNo, kw);
	}
	
	@Override
	public List<QnaVO> qnaList() {
		return mapper.selectQnaList();
	}
	@Override
	public QnaVO getQnaOne(int pCode) {
		return mapper.selectMyQna(pCode);
	}
	@Override
	public boolean modifyqna(QnaVO qna) {
		int r = mapper.updateQna(qna);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}
	@Override
	public List<QnaVO> qnaListWithUserNo(int userNo) {
		
		return mapper.selectListWithUserNo(userNo);
	}
	
	@Override
	public boolean removeQna(int qCode) {
		int r = mapper.deleteList(qCode);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
		
	}
	
	@Override
	public boolean addAnswer(List<AnswerVO> answer) {
		int r = mapper.insertAnswer(answer);
		if(r == 1) {
			sqlSession.commit();
			return true;
		}
		return false;
	}
	

}
