package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;

public class MyPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		boolean isLogin = session.getAttribute("isLogin") != null 
								? (boolean) session.getAttribute("isLogin") : false;
		
		if(!isLogin) {
			res.sendRedirect("login.do");
		} else {
			req.getRequestDispatcher("user/mypage.tiles").forward(req, res);
		}

	}

}
