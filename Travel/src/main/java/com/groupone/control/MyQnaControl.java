package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.QnaVO;

public class MyQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		String qcode = req.getParameter("qCode");
		
		System.out.println(qcode);

		QnaService svc = new QnaServiceImpl();

		QnaVO qna = svc.getQnaOne(Integer.parseInt(qcode));
		
		req.setAttribute("qna", qna);
		
		System.out.println(qcode);
	
		req.getRequestDispatcher("user/myqna.tiles").forward(req, res);

	}

}
