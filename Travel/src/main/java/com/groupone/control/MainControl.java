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
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;
import com.groupone.vo.ProductVO;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		res.setContentType("text/json;charset=utf-8");
		
		ProductService svc = new ProductServiceImpl();
		WishService wishSvc = new WishServiceImpl();
		
		List<ProductVO> newlist = svc.newProductList();
		req.setAttribute("newlist", newlist);
		
		HttpSession session = req.getSession();
		
		if (session.getAttribute("isLogin") != null) {
			int userNo = (int) session.getAttribute("userNo");
			List<ProductVO> wishlist = wishSvc.getWishList(userNo);
			req.setAttribute("wishlist", wishlist);
		}
		
		req.getRequestDispatcher("main/main.tiles").forward(req, res);
	}

}
