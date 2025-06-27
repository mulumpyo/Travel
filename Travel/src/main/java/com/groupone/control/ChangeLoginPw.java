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

public class ChangeLoginPw implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");

		UserService userService = new UserServiceImpl();

		HttpSession session = req.getSession(false);
		if (session == null || session.getAttribute("userNo") == null) {
			res.sendRedirect("login.do");
			return;
		}

		int userNo = (int) session.getAttribute("userNo");
		UserVO loginUser = userService.getUserInfo(userNo);

		String newPw = req.getParameter("newPw"); // 새 비밀번호
		String confirmPw = req.getParameter("confirmPw"); // 새 비밀번호 확인

		// 새 비밀번호 확인
		if (!newPw.equals(confirmPw)) {
			req.setAttribute("errorMsg", "새 비밀번호가 일치하지 않습니다.");
			req.setAttribute("loginUser", loginUser);
			req.getRequestDispatcher("/user/login.tiles").forward(req, res);
			return;
		}

		// 비밀번호 업데이트
		loginUser.setUserPw(newPw);
		boolean success = userService.passwordUpdate(loginUser);
		if (success) {
			session.setAttribute("msg", "비밀번호가 성공적으로 변경되었습니다.");
		} else {
			req.setAttribute("errorMsg", "비밀번호 변경에 실패했습니다.");
		}

		req.setAttribute("loginUser", loginUser);
		req.getRequestDispatcher("/user/login.tiles").forward(req, res);
	}

}
