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
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;

public class RemoveProductControl implements Control {

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
		
		boolean isAdmin = session.getAttribute("isAdmin") != null 
				? (boolean) session.getAttribute("isAdmin") : false;
		
		if (!(isLogin && isAdmin)) {
			json.put("retCode", "No Permission");
			out.print(gson.toJson(json));
			return;
		}
		
		int pCode = Integer.parseInt(req.getParameter("pCode"));
		
		ProductService svc = new ProductServiceImpl();
		
		if(svc.removeProduct(pCode)) {
			json.put("retCode", "Success");
		} else {
			json.put("retCode", "Fail");
		}
		
		out.print(gson.toJson(json));
	}

}
