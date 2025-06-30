package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;

public class RemoveWishControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		int userNo = (int) session.getAttribute("userNo");
		int pCode = Integer.parseInt(req.getParameter("pCode"));
		String referer = req.getHeader("Referer");
		
		WishService svc = new WishServiceImpl();
		
		if (svc.removeWish(userNo, pCode)) {
			res.sendRedirect(referer);
		}
	}
}
