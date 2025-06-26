package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.vo.QnaVO;

public class QnaListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8"); 
		
		if(req.getMethod().equals("GET")) {
			req.getRequestDispatcher("user/qnalist.tiles").forward(req, resp);
		} else if(req.getMethod().equals("POST")) {		
			
			String code = req.getParameter("code");
			String type = req.getParameter("type");
			String title = req.getParameter("title");
			String date = req.getParameter("date");
			String status = req.getParameter("status");
			
			QnaVO qna = new QnaVO();
			
			
			qna.setType(type);
			qna.setTitle(title);
			
			
			
			
		}

	}

}
