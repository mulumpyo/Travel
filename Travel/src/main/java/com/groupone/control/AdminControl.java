package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;

public class AdminControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		

		
		HttpSession session = req.getSession();
		
		// 세션에서 가져올 때
		// int userNo = (int) session.getAttribute("userNo");
		

		
		boolean isLogin = session.getAttribute("isLogin") != null ? (boolean) session.getAttribute("isLogin") : false;
		boolean isAdmin = session.getAttribute("isAdmin") != null ? (boolean) session.getAttribute("isAdmin") : false;
		
		if(isLogin && isAdmin) {
			req.getRequestDispatcher("admin/productlist.tiles").forward(req, res);
		} else {
			res.sendRedirect("main.do");
		}


	}

}
