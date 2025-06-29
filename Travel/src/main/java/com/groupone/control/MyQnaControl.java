package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.QnaVO;

public class MyQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		// 유니코드로 문자열 인코딩
		req.setCharacterEncoding("utf-8");

		// 세션에서 값을 가져오기 위한 준비
		HttpSession session = req.getSession();

		// 값이 null이 아니고 값이 true이면 true 아니면 false
		boolean isLogin = session.getAttribute("isLogin") != null 
				? (boolean) session.getAttribute("isLogin") : false;

		// QnaService 사용하기 위한 준비
		QnaService svc = new QnaServiceImpl();

		// qCode 파라미터 값 저장
		int qCode = Integer.parseInt(req.getParameter("qCode"));

		// qCode로 단건조회
		QnaVO qna = svc.getQnaOne(qCode);

		// 질문 작성자 고유번호 가져오기
		int writer = qna.getUserNo();

		// 로그인한 사용자 고유번호 가져오기
		int loginUserNo = session.getAttribute("userNo") != null 
				? (int) session.getAttribute("userNo") : -1;

		// 로그인이 되어 있지 않거나 유저가 등록한 게시글이 아닌 경우 qnalist.do로 이동
		if (!isLogin || writer != loginUserNo) {
			res.sendRedirect("qnalist.do");
		} else {
			
			// request qna 값 저장
			req.setAttribute("qna", qna);
			
			// Qna 게시글 상세페이지 이동
			req.getRequestDispatcher("user/myqna.tiles").forward(req, res);
		}

	}
}
