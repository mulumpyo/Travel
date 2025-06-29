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
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		
		int qCode = Integer.parseInt(req.getParameter("qCode"));
		String title = req.getParameter("title");
		String question = req.getParameter("question");
		
		QnaVO modify = new QnaVO();
		modify.setQCode(qCode);
		modify.setTitle(title);
		modify.setQuestion(question);
		
		QnaService svc = new QnaServiceImpl();
		
		if(svc.modifyqna(modify)) {
			res.sendRedirect("myqna.do?qCode=" + qCode + "&msg=success");
		} else {
			res.sendRedirect("myqna.do?qCode=" + qCode + "&msg=fail");
		}

	}
}
