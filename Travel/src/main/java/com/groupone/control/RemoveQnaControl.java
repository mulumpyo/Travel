package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;

public class RemoveQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		int qCode = Integer.parseInt(req.getParameter("qCode"));
		
		
		QnaService svc = new QnaServiceImpl();
		if(svc.removeQna(qCode)) {
			res.sendRedirect("qnalist.do");
		}
	}

}
