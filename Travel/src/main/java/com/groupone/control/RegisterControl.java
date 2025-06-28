package com.groupone.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class RegisterControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String birthStr = req.getParameter("birth");
		String pw1 = req.getParameter("pw1");
		String pw2 = req.getParameter("pw2");

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDate;
		try {
			birthDate = formatter.parse(birthStr);
		} catch (ParseException e) {
			return;
		}


		UserVO user = new UserVO();
		
		user.setUserId(id);
		user.setUserName(name);
		user.setUserPhone(phone);
		user.setUserBirth(birthDate);
		user.setUserPw(pw1);
		
		UserService svc = new UserServiceImpl();

		if (svc.userRegister(user)) {
			HttpSession session = req.getSession();
			session.setAttribute("userNo", user.getUserNo());
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("isLogin", true);
			session.setAttribute("isAdmin", user.getIsAdmin() == 1 ? true : false);
			res.sendRedirect("productList.do");
		} else {
			req.setAttribute("errorMsg", "회원가입에 실패했습니다. 다시 시도해주세요.");
			req.getRequestDispatcher("login/register.tiles").forward(req, res);

			
			
		
		}

	}

}
