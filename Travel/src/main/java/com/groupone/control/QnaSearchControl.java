package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.groupone.common.Control;
import com.groupone.service.QnaService;
import com.groupone.service.QnaServiceImpl;
import com.groupone.vo.QnaVO;

public class QnaSearchControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/json;charset=utf-8"); // 한글 번역

		// 검색기능
		String kw = req.getParameter("keyword");
		
		// 데이터처리
		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.getqna(kw);
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(list);

		System.out.println(json);
		
		res.getWriter().print(json);

	}

}
