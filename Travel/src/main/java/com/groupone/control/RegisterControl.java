package com.groupone.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class RegisterControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		req.setCharacterEncoding("UTF-8");

		// 1. 사용자 입력값 가져오기
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String birthStr = req.getParameter("birth");
		String pw1 = req.getParameter("pw1");
		String pw2 = req.getParameter("pw2");  // 비밀번호 확인 값 받기

		UserService svc = new UserServiceImpl();

		// 3. 사용자 정보 객체 생성
		UserVO user = new UserVO();
		user.setUserId(id);
		user.setUserName(name);
		user.setUserPhone(phone);

		if (birthStr == null || birthStr.trim().isEmpty()) {
			req.setAttribute("errorMsg", "생년월일을 입력해주세요.");
			req.getRequestDispatcher("user/login.tiles").forward(req, res);
			return;
		}

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDate = null;
		try {
			birthDate = formatter.parse(birthStr);
		} catch (ParseException e) {
			e.printStackTrace();
			return;
		}

		user.setUserBirth(birthDate);
		user.setUserPw(pw1);
		
		req.setAttribute("registerId", id);//회원가입 페이지에서 아이디 저장
		
		// 비밀번호 확인
		if (pw1 == null || pw2 == null || !pw1.equals(pw2)) {
		    req.setAttribute("errorMsg", "비밀번호가 일치하지 않습니다.");
			req.getRequestDispatcher("user/register.tiles").forward(req, res);
		    return;
		}


		// 4. 회원가입 처리
		boolean isInserted = svc.userRegister(user);

		if (isInserted) {
			// 가입 성공 시 로그인 페이지로 이동
			res.sendRedirect("login.do");
		} else {
			// 가입 실패 시 에러 메시지와 함께 다시 회원가입 페이지로
			req.setAttribute("errorMsg", "회원가입에 실패했습니다. 다시 시도해주세요.");
			req.getRequestDispatcher("user/login.tiles").forward(req, res);

			
			
		
		}

	}

}
