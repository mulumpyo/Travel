package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;
import com.groupone.vo.WishVO;

public class AddWishControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		boolean isLogin = session.getAttribute("isLogin") != null 
								? (boolean) session.getAttribute("isLogin") : false;
		
		if(!isLogin) {
			
			res.sendRedirect("login.do");
			
		} else {
			
			int userNo = (int) session.getAttribute("userNo");
			int pCode = Integer.parseInt(req.getParameter("pCode"));
			
			WishVO wish = new WishVO();
			
			wish.setUserNo(userNo);
			wish.setPCode(pCode);
			
			WishService svc = new WishServiceImpl();
			
			if (svc.addWish(wish)) {
				res.sendRedirect("wishlistpage.do");
			} else {
				System.out.println("등록 실패");
			}
			
		}
		
		
		

	}

}
