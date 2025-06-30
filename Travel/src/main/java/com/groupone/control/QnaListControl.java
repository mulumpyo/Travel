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
import javax.servlet.http.HttpSession;

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

		// DB의 로그인한 유저의 Qna 리스트를 불러와서 뿌려주기 위한 페이지
		// 필요한 값 = Session에 있는 isLogin 값, Session에 있는 유저의 userNo
		// 돌아오는 값 = 로그인한 유저의 Qna 리스트
		
		// 세션에서 값을 가져오기 위한 준비
		HttpSession session = req.getSession();
		
		int qCode = 0;
		if(req.getParameter("qCode") != null) {
			qCode = Integer.parseInt(req.getParameter("qCode"));
		} else {
			System.out.println("없습니다");
		}
		
		
		// 값이 null이 아니고 값이 true이면 true 아니면 false 
		boolean isLogin = session.getAttribute("isLogin") != null 
				? (boolean) session.getAttribute("isLogin") : false;
				
		// 로그인이 되어 있지 않다면 login.do로 이동
		if(!isLogin) {
			resp.sendRedirect("login.do?toUrl=qnalist.do");
		} else {
		
			// 사용자의 고유 번호 Session에서 가져오기
			int userNo = (int) session.getAttribute("userNo");
			
			
			// QnaService 사용할 준비
			QnaService svc = new QnaServiceImpl();
			
			// QnaVo 객체가 담김 컬렉션 리스트 "qnaList" 생성하고 Service의 메소드 호출하여 리턴된 값을 저장
			List<QnaVO> qnaList = svc.qnaListWithUserNo(userNo);
			svc.removeQna(qCode);
			
			// request "qnaList" 속성에 qnaList 저장
			req.setAttribute("qnaList", qnaList);
			
			// req (request), resp (response) 값들을 가지고 qnalist.jsp 로 유저를 이동
			// 경로 WEB-INF/jsp/user/qnalist.jsp
			req.getRequestDispatcher("user/qnalist.tiles").forward(req, resp);
		}
	}

}
