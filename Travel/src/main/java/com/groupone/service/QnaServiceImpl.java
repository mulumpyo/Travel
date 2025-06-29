package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.QnaMapper;
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
	public List<QnaVO> getqna(String kw) {
		return mapper.selectKeyword(kw);
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
	

}
