package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class FindPwControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		UserService userService = new UserServiceImpl();

		String id = req.getParameter("id"); // 이이디
		String name = req.getParameter("name"); // 이름
		String phone = req.getParameter("phone"); // 휴대폰번호 확인

		// 입력 검증
		if (id == null || name == null || phone == null || id.trim().isEmpty() || name.trim().isEmpty()
				|| phone.trim().isEmpty()) {
			req.setAttribute("errorMsg", "모든 항목을 입력해주세요.");
			req.getRequestDispatcher("/user/findPw.tiles").forward(req, res);
			return;
		}

		// 사용자 확인
		UserVO user = userService.findPw(id, name, phone);
		if (user != null) {
			// 비밀번호 찾기 성공
		} else {
			// 실패
		}

		if (user != null) {
			req.setAttribute("userNo", user.getUserNo());
			req.setAttribute("loginId", id);
			req.setAttribute("showChangeModal", true);
			req.getRequestDispatcher("/user/login_password.tiles").forward(req, res);
		} else {
			req.setAttribute("loginId", id);
			req.setAttribute("errorMsg", "일치하는 회원 정보가 없습니다.");
			req.getRequestDispatcher("/user/login_password.tiles").forward(req, res);
		}

	}
	
	
}
