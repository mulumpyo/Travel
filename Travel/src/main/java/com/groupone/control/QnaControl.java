package com.groupone.control;

import java.io.IOException;
import java.util.HashMap;
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

public class QnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		if(req.getMethod().equals("GET")) {
			
			req.getRequestDispatcher("user/qna.tiles").forward(req, resp);
		} else if(req.getMethod().equals("POST")) {
			
			int userNo = 1; // 임시로 유저 고유 번호는 1
			String type = req.getParameter("type");
			String title = req.getParameter("title");
			String question = req.getParameter("question");
			
			
			// QNA 데이터 꾸러미
			QnaVO qna = new QnaVO();
			
			qna.setUserNo(userNo);
			qna.setType(type);
			qna.setTitle(title);
			qna.setQuestion(question);
			
			Map<String, Object> map = new HashMap<>();
			Gson gson = new GsonBuilder().create();
			
			// 정의해둔 기능 사용할 준비
			QnaService svc = new QnaServiceImpl();
			
			// 기능 실행
			if (svc.addQna(qna)) {
				map.put("retVal", qna);
				map.put("retCode", "Success");  // "retCode" : "Success"
			} else {
				map.put("retCode", "Fail");
			}
			
			// retCode : 성공했나요?
			
			// Success 면 retVal 값을 담아서 json을 만들어서 ajax 답장해주세요.
			String json = gson.toJson(map);
			System.out.println(json);
			resp.getWriter().print(json);
		}
		

	}

}
