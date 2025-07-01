package com.groupone.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.groupone.common.Control;
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;
import com.groupone.vo.WishVO;

public class AddWishControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		res.setContentType("application/json;charset=utf-8");
		
		HttpSession session = req.getSession();
		PrintWriter out = res.getWriter();
	    Gson gson = new Gson();
	    
	    Map<String, Object> json = new HashMap<>();
		
		
		boolean isLogin = session.getAttribute("isLogin") != null 
								? (boolean) session.getAttribute("isLogin") : false;
		
		if(!isLogin) {
			
		    json.put("retCode", "NotLoggedIn");
		    out.print(gson.toJson(json));
		    return;
			
		} else {
			
			int userNo = (int) session.getAttribute("userNo");
			int pCode = Integer.parseInt(req.getParameter("pCode"));
			
			WishVO wish = new WishVO();
			
			wish.setUserNo(userNo);
			wish.setPCode(pCode);
			
			WishService svc = new WishServiceImpl();
			
			if (svc.addWish(wish)) {
				json.put("retCode", "Success");
		    } else {
		    	json.put("retCode", "Fail");
		    }
			
			out.print(gson.toJson(json));
		}

	}

}
