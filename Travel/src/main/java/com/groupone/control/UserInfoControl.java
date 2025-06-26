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

public class UserInfoControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			res.sendRedirect("login.do");
			return;
		}

		UserService userService = new UserServiceImpl();

		String update = req.getParameter("update");
		String delete = req.getParameter("delete");

		try {
			if (update != null) {
				String newPhone = req.getParameter("userPhone");
				loginUser.setUserPhone(newPhone);

				boolean success = userService.userModify(loginUser);
				if (success) {
					session.setAttribute("loginUser", loginUser);
					res.sendRedirect("userInfo.do");
				} else {
					req.setAttribute("errorMsg", "회원 정보 수정에 실패했습니다.");
					req.getRequestDispatcher("userInfo.jsp").forward(req, res);
				}

			} else if (delete != null) {
				boolean success = userService.userRemove(loginUser.getUserNo());
				if (success) {
					session.invalidate();
					res.sendRedirect("main.do");
				} else {
					req.setAttribute("errorMsg", "회원 탈퇴에 실패했습니다.");
					req.getRequestDispatcher("userInfo.jsp").forward(req, res);
				}

			} else {
				// 아무 동작도 선택되지 않은 경우
				res.sendRedirect("userInfo.do");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errorMsg", "처리 중 오류 발생: " + e.getMessage());
			req.getRequestDispatcher("error.jsp").forward(req, res);
		}
	}
}
