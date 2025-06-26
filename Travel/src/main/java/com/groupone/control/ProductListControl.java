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
import com.groupone.vo.ProductVO;

public class ProductListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ProductService svc = new ProductServiceImpl();

		String theme = req.getParameter("theme");
		String country = req.getParameter("country");
		SearchDTO search = new SearchDTO();
		search.setTheme(theme);
		search.setCountry(country);
		System.out.println(search);

		List<ProductVO> list = svc.productList(search);
		List<String> tlist = svc.themeList();
		List<String> clist = svc.countryList();

		req.setAttribute("productList", list);
		req.setAttribute("themeList", tlist);
		req.setAttribute("countryList", clist);

		// theme, country를 parameter로 사용하기 위해서 attribute에 지정.
		req.setAttribute("theme", theme);
		req.setAttribute("country", country);
		
//		HttpSession session = req.getSession();
//		String auth = (String) session.getAttribute("auth");
//		
//		if(auth != null && auth.equals("User")/*일반사용자*/) {
//			req.getRequestDispatcher("user/productlist.tiles").forward(req, res);
//			
//		} else if(auth != null && auth.equals("Admin")/*관리자*/) {
//			req.getRequestDispatcher("admin/productlist.tiles").forward(req, res);
//			
//		} else {
//			req.getRequestDispatcher("user/productlist.tiles").forward(req, res);
//		}
		
		int isAdmin = 1;
		if(isAdmin == 0) {
			req.getRequestDispatcher("user/productlist.tiles").forward(req, res);
			
		} else if(isAdmin == 1) {
			req.getRequestDispatcher("admin/productlist.tiles").forward(req, res);
			
		} else {
			req.getRequestDispatcher("user/productlist.tiles").forward(req, res);
		}



	}

}
