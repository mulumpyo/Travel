package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		switch (req.getMethod().toString()) {
		
		case "GET" : 
			
			req.getRequestDispatcher("user/login.tiles").forward(req, res);
			break;
			
		case "POST" :
			
			String id = req.getParameter("loginId");
		
			UserService svc = new UserServiceImpl();
			
			if (svc.userIdCheck(id)) {
				req.setAttribute("loginId", id);
				req.getRequestDispatcher("user/login_password.tiles").forward(req, res);
				
			} else {
				req.setAttribute("registerId", id);
				req.getRequestDispatcher("user/register.tiles").forward(req, res);
				
			}
			
			break;
		}
	
	}
}
