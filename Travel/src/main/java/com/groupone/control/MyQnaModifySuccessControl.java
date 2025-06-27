package com.groupone.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.QnaVO;

public class MyQnaModifySuccessControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		QnaService svc = new QnaServiceImpl();
		
		HttpSession session = req.getSession();
		
		String startDayStr = req.getParameter("startDay");
		String endDayStr = req.getParameter("endDay");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		Date startDate = null;
		Date endDate = null;
		
		
		String qcode = req.getParameter("qcode");
		String title = req.getParameter("title");
		String question = req.getParameter("question");
		
		QnaVO qna = new QnaVO();
		qna.setTitle(title);
		qna.setQuestion(question);
		
		svc.modifyqna(qna);
		
		req.setAttribute("qna", qna);
		System.out.println(qna); 
		
		req.getRequestDispatcher("admin/myQnaModifySuccess.tiles").forward(req, res);

		

	}

}
