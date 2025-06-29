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

		String toUrl = req.getParameter("toUrl");
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String birthStr = req.getParameter("birth");
		String pw1 = req.getParameter("pw1");
		String pw2 = req.getParameter("pw2");

		if (!pw1.equals(pw2)) {
			req.setAttribute("errorMsg", "비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
			req.setAttribute("registerId", id);
			req.getRequestDispatcher("login/register.tiles").forward(req, res);
			return;
		}

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDate;
		try {
			birthDate = formatter.parse(birthStr);
		} catch (ParseException e) {
			req.setAttribute("errorMsg", "생년월일 형식이 올바르지 않습니다.");
			req.setAttribute("registerId", id);
			req.getRequestDispatcher("login/register.tiles").forward(req, res);
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
			
			if (toUrl != null && !toUrl.isEmpty()) {
				res.sendRedirect(toUrl);
			} else {
				res.sendRedirect("productList.do");
			}
			
		} else {
			req.setAttribute("errorMsg", "회원가입에 실패했습니다. 다시 시도해주세요.");
			req.setAttribute("registerId", id);
			req.getRequestDispatcher("login/register.tiles").forward(req, res);
		}

	}

}