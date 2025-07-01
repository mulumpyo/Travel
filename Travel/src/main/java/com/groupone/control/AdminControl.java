package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.common.SearchDTO;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.ProductVO;

public class AdminControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();

		boolean isLogin = session.getAttribute("isLogin") != null 
				? (boolean) session.getAttribute("isLogin") : false;
		
		boolean isAdmin = session.getAttribute("isAdmin") != null 
				? (boolean) session.getAttribute("isAdmin") : false;
		
		if(isLogin && isAdmin) {
			ProductService svc = new ProductServiceImpl();

			String theme = req.getParameter("theme");
			String country = req.getParameter("country");
			String keyword = req.getParameter("keyword");
			
			SearchDTO search = new SearchDTO();
			search.setTheme(theme);
			search.setCountry(country);
			search.setKeyword(keyword);

			List<ProductVO> list = svc.productListAll(search);

			req.setAttribute("productList", list);
			
			req.setAttribute("theme", theme);
			req.setAttribute("country", country);
			req.setAttribute("keyword", keyword);
			req.getRequestDispatcher("admin/productlist.tiles").forward(req, res);
		
		} else {
			res.sendRedirect("main.do");
		}


	}

}
