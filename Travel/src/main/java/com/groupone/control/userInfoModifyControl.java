package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class userInfoModifyControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserService svc = new UserServiceImpl();
		
	    Object adminAttr = session.getAttribute("isAdmin");
	    boolean isAdmin = false;
	    if (adminAttr != null && adminAttr instanceof Boolean) {
	        isAdmin = (Boolean) adminAttr;
	    }
	    
	    if(isAdmin) {
	    	String userNo = req.getParameter("userNo");
			if (userNo != null) {
				int userno = Integer.parseInt(userNo);
	    	UserVO user = svc.getUserInfo(userno);
	    	req.setAttribute("user", user);
	    	req.getRequestDispatcher("admin/userInfoModify.tiles").forward(req, res);
			}
	    	
	    }
	    
	    
	}

}
