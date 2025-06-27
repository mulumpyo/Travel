package com.groupone.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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

		Map<String, Object> map = new HashMap<>();
		map.put("data", list);
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		System.out.println(json);
		
		PrintWriter out = resp.getWriter();
		out.print(json);
		
		req.setAttribute("qnaList", list);
		
		req.getRequestDispatcher("user/qnalist.tiles").forward(req, resp);
	}

}
