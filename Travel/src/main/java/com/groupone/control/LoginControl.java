package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		String toUrl = null;
		
		switch (req.getMethod().toString()) {

		case "GET": //로그인 화면
			HttpSession session = req.getSession();
			
			//로그인 유무
			boolean isLogin = session.getAttribute("isLogin") != null 
					? (boolean) session.getAttribute("isLogin") : false;
			
			
			if (isLogin) {
				res.sendRedirect("main.do");
				return;
			}
			
			//로그인 후 돌아갈 위치 toUrl
			String paramToUrl = req.getParameter("toUrl");
			
			if (paramToUrl != null && !paramToUrl.isEmpty()) {
				toUrl = paramToUrl;
			} else {
				String referer = req.getHeader("Referer");//이전페이지
				
				if (referer != null && !referer.isEmpty()) {
					if (!referer.contains("login.do")) {
						toUrl = referer; 
					}
					toUrl = referer; 
				} else {
					toUrl = "main.do";// 없으면 메인페이지
				}
			}
			
			req.setAttribute("toUrl", toUrl);//jsp로 전달
			req.getRequestDispatcher("login/login.tiles").forward(req, res);
			break;

		case "POST":

			String id = req.getParameter("loginId");
			toUrl = req.getParameter("toUrl");

			UserService svc = new UserServiceImpl();
			req.setAttribute("toUrl", toUrl);
			if (toUrl == null || toUrl.isEmpty()) {
				toUrl = "main.do";
			}
			if (svc.userIdCheck(id)) {
				//아이디 존재->비밀번호 입력페이지
				req.setAttribute("loginId", id);
				req.getRequestDispatcher("login/login_password.tiles").forward(req, res);
				
			} else {
				//아이디 없음->회원가입 페이지
				req.setAttribute("registerId", id);
				req.getRequestDispatcher("login/register.tiles").forward(req, res);

			}

			break;
		}
		
		

			
	}
}
