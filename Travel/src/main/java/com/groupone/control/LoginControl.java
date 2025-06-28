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

		case "GET":
			HttpSession session = req.getSession();
			
			boolean isLogin = session.getAttribute("isLogin") != null 
					? (boolean) session.getAttribute("isLogin") : false;
			
			if (isLogin) {
				res.sendRedirect("main.do");
				return;
			}
			
			String paramToUrl = req.getParameter("toUrl");
			
			if (paramToUrl != null && !paramToUrl.isEmpty()) {
				toUrl = paramToUrl;
			} else {
				String referer = req.getHeader("Referer");
				
				if (referer != null && !referer.isEmpty()) {
					if (!referer.contains("login.do")) {
						toUrl = referer; 
					}
					toUrl = referer; 
				} else {
					toUrl = "main.do";
				}
			}
			
			req.setAttribute("toUrl", toUrl);
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
				
				req.setAttribute("loginId", id);
				req.getRequestDispatcher("login/login_password.tiles").forward(req, res);

			} else {
				req.setAttribute("registerId", id);
				req.getRequestDispatcher("login/register.tiles").forward(req, res);

			}

			break;
		}
		
		

			
	}
}
