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

public class RealLoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("loginId");
		String pw = req.getParameter("loginPw");
		String toUrl = req.getParameter("to");

		UserService svc = new UserServiceImpl();
		
		if (svc.userLogin(id, pw)) {

			UserVO user = svc.getUserInfo(svc.getUserNo(id));

			HttpSession session = req.getSession();
			session.setAttribute("userNo", user.getUserNo());
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("isLogin", true);
			session.setAttribute("isAdmin", user.getIsAdmin() == 1 ? true : false);
			res.sendRedirect(toUrl);

		} else {
			req.setAttribute("retCode", "Fail");
			req.setAttribute("loginId", id);
			req.getRequestDispatcher("login/login_password.tiles").forward(req, res);
		}
	}

}
