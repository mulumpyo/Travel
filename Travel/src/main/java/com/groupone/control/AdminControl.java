package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;

public class AdminControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		

		
		HttpSession session = req.getSession();
		
		// 세션에서 가져올 때
		// int userNo = (int) session.getAttribute("userNo");
		

		// 임시 유저 고유번호
		int userNo = 0;
		
		UserService svc = new UserServiceImpl();
		
		
		// User 


	}

}
