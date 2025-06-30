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
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.ProductVO;
import com.groupone.vo.UserVO;

public class userInfoSuccessControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		UserService svc = new UserServiceImpl();
		
		HttpSession session = req.getSession();
		
		

		String userBirthStr = req.getParameter("userBirth");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date userBirth = null;
		try {
			userBirth = sdf.parse(userBirthStr);
		} catch (ParseException e) {
		    e.printStackTrace(); // 또는 적절한 예외 처리
		}
		
		
		
		int userNo = Integer.parseInt(req.getParameter("userNo"));
		String userId = req.getParameter("userId");
		String userPw= req.getParameter("userPw");
		String userName= req.getParameter("userName");
		String userPhone= req.getParameter("userPhone");
		
		UserVO user = new UserVO();
		user.setUserNo(userNo);
		user.setUserId(userId);
		user.setUserPw(userPw);
		user.setUserName(userName);
		user.setUserPhone(userPhone);
		user.setUserBirth(userBirth);
		
		svc.userModify(user);
		
		req.setAttribute("user", user);
			

		
		
		req.getRequestDispatcher("admin/userModifySuccess.tiles").forward(req, res);
	}

}
