package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = req.getParameter("loginId");
		String pw = req.getParameter("loginPw");

		UserService svc = new UserServiceImpl();
		UserVO user = svc.login(id, pw);

		if (user != null) {
			HttpSession session = req.getSession();

			session.setAttribute("loginId", user.getUserId());
			session.setAttribute("isAdmin", user.getIsAdmin());

			int isAdmin = (int) session.getAttribute("isAdmin");
			// 권한에 따라 시작페이지지정.
			if (isAdmin == 0) {
				res.sendRedirect("main.do");//일반로그인
			} else if (isAdmin == 1) {
				res.sendRedirect("어드민 페이지");//어드민로그인

			}

		}else {
			req.setAttribute("msg", "ID와 PW를 확인하세요.");
			req.getRequestDispatcher("user/login.tiles").forward(req, res);
		}
	}
}
