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

		HttpSession session = req.getSession();
		
	    Object adminAttr = session.getAttribute("isAdmin");
	    boolean isAdmin = false;
	    if (adminAttr != null && adminAttr instanceof Boolean) {
	        isAdmin = (Boolean) adminAttr;
	    }

		String theme = req.getParameter("theme");
		String country = req.getParameter("country");
		String keyword = req.getParameter("keyword");
		
		
		int pCode = 0;
		if (req.getParameter("pCode")!=null) {
			pCode = Integer.parseInt(req.getParameter("pCode"));
			System.out.println("pCode는"+pCode);
			svc.removeProduct(pCode);
			
		}
		
		
		SearchDTO search = new SearchDTO();
		search.setTheme(theme);
		search.setCountry(country);
		search.setKeyword(keyword);
		
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
		req.setAttribute("keyword", keyword);
		
	    if (isAdmin) {
	        req.getRequestDispatcher("admin/productlist.tiles").forward(req, res);
	    } else {
	        req.getRequestDispatcher("user/productlist.tiles").forward(req, res);
	    }
		


	}

}
