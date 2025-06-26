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

		UserService svc = new UserServiceImpl();
		UserVO loginUser = svc.userNo(id, pw); // 사용자 전체 정보 가져오기
		
		
		if (svc.userLogin(id, pw)) {
			// 로그인 성공

			UserVO userNo = svc.userNo(id, pw);

			HttpSession session = req.getSession();
			session.setAttribute("userNo", userNo);
			res.sendRedirect("main.do");

		} else {
			// 로그인 실패 (비밀번호 틀림)
			req.setAttribute("errorMsg", "비밀번호가 틀렸습니다.");
			req.setAttribute("loginId", id);
			req.getRequestDispatcher("user/login_password.tiles").forward(req, res);
		}
	}

}
