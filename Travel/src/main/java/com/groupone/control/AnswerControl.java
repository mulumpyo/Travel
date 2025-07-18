package com.groupone.control;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.AnswerVO;

public class AnswerControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		QnaService svc = new QnaServiceImpl();

		int qCode = Integer.parseInt(req.getParameter("qCode"));
		int userNo = Integer.parseInt(req.getParameter("userNo"));
		String writer = req.getParameter("writer");
		String answer = req.getParameter("country");
		String aDate = req.getParameter("aDate");
		
		AnswerVO qnaList =  new AnswerVO();
		
		qnaList.setQCode(qCode);
		qnaList.setUserNo(userNo);
		qnaList.setWriter(writer);
		qnaList.setAnswer(answer);
		qnaList.setADate(null);
		

		

	    req.getRequestDispatcher("admin/answer.tiles").forward(req, res);

		
	}

}
