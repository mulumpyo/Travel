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
		
		String toUrl = req.getParameter("to");
		
		if (toUrl == null || toUrl.isEmpty()) {
			toUrl = "main.do";
		}

		req.setAttribute("to", toUrl);
		
		switch (req.getMethod().toString()) {

		case "GET":
			HttpSession session = req.getSession();
			
			boolean isLogin = session.getAttribute("isLogin") != null 
					? (boolean) session.getAttribute("isLogin") : false;
			
			if (isLogin) {
				res.sendRedirect("main.do");
				return;
			}
			req.getRequestDispatcher("login/login.tiles").forward(req, res);
			break;

		case "POST":

			String id = req.getParameter("loginId");

			UserService svc = new UserServiceImpl();
			req.setAttribute("to", toUrl);
			if (svc.userIdCheck(id)) {
				
				req.getRequestDispatcher("login/login_password.tiles").forward(req, res);

			} else {
				
				req.getRequestDispatcher("login/register.tiles").forward(req, res);

			}

			break;
		}
		
		

			
	}
}
