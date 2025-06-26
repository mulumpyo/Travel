package com.groupone.control;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.QnaVO;

public class QnaListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		QnaService svc = new QnaServiceImpl();

		List<QnaVO> list = svc.qnaList();

		req.setAttribute("qnaList", list);
		
		req.getRequestDispatcher("user/qnalist.tiles").forward(req, resp);
	}

}
