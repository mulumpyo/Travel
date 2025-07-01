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
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;
import com.groupone.vo.ProductVO;
import com.groupone.vo.WishVO;

public class ProductListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ProductService svc = new ProductServiceImpl();

		HttpSession session = req.getSession();
		
		boolean isLogin = session.getAttribute("isLogin") != null
									? (boolean) session.getAttribute("isLogin") : false;
		
		if (isLogin) {
			int userNo = (int) session.getAttribute("userNo");
			WishService wishSvc = new WishServiceImpl();
			List<ProductVO> wishlist = wishSvc.getWishList(userNo);
			req.setAttribute("wishlist", wishlist);
		}
		
		
		String theme = req.getParameter("theme");
		String country = req.getParameter("country");
		String keyword = req.getParameter("keyword");
		
		
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
		

	    req.getRequestDispatcher("user/productlist.tiles").forward(req, res);

		


	}

}
