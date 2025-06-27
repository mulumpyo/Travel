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

public class ChangePwControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession(false);
		if (session == null || session.getAttribute("userNo") == null) {
			res.sendRedirect("login.do");
			return;
		}

		int userNo = (int) session.getAttribute("userNo");
		UserService userService = new UserServiceImpl();
		UserVO loginUser = userService.getUserInfo(userNo);

		if (loginUser == null) {
			res.sendRedirect("login.do");
			return;
		}

		// 비밀번호 폼 파라미터 받기
		String currentPw = req.getParameter("pw"); // 현재 비밀번호
		String newPw = req.getParameter("newPw"); // 새 비밀번호
		String confirmPw = req.getParameter("confirmPw"); // 새 비밀번호 확인

		// 입력 검증
		if (currentPw == null || newPw == null || confirmPw == null || currentPw.trim().isEmpty()
				|| newPw.trim().isEmpty() || confirmPw.trim().isEmpty()) {
			req.setAttribute("errorMsg", "모든 항목을 입력해주세요.");
			req.setAttribute("loginUser", loginUser);
			req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
			return;
		}

		// 현재 비밀번호 확인
		if (!currentPw.equals(loginUser.getUserPw())) {
			req.setAttribute("errorMsg", "현재 비밀번호가 올바르지 않습니다.");
			req.setAttribute("loginUser", loginUser);
			req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
			return;
		}

		// 새 비밀번호 확인
		if (!newPw.equals(confirmPw)) {
			req.setAttribute("errorMsg", "새 비밀번호가 일치하지 않습니다.");
			req.setAttribute("loginUser", loginUser);
			req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
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
		req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
	}
}
