package com.groupone.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

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
		
		
		int qCode = Integer.parseInt(req.getParameter("qCode"));
		String title = req.getParameter("title");
		String question = req.getParameter("question");
	
		
		QnaVO qna = new QnaVO();
		
		qna.setQCode(qCode);
		qna.setTitle(title);
		qna.setQuestion(question);
		
		svc.modifyqna(qna);
		
		req.setAttribute("qna", qna);
		System.out.println("폼에서 받은 qCode: " + req.getParameter("qCode")); 
		
		req.getRequestDispatcher("admin/myQnaModifySuccess.tiles").forward(req, res);

		
	}

}
