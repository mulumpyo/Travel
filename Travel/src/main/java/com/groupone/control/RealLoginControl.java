package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;

public class RealLoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("loginId");
		String pw = req.getParameter("loginPw");

		UserService svc = new UserServiceImpl();

		if (svc.userLogin(id, pw)) {
			// 로그인 성공
//	            req.getSession().setAttribute("loginId", id);
			res.sendRedirect("main.do");
		} else {
			// 로그인 실패 (비밀번호 틀림)
			req.setAttribute("errorMsg", "비밀번호가 틀렸습니다.");
			req.setAttribute("loginId", id);
			req.getRequestDispatcher("user/login_password.tiles").forward(req, res);
		}
	}

}
