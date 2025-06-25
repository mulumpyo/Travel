package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.vo.ProductVO;

public class ProductListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
//		ProductService svc = new ProductServiceImpl();
//		List<ProductVO> list = svc.productList();
//		
//		req.setAttribute("productList", list);
		
		req.getRequestDispatcher("user/productlist.tiles").forward(req, res);

		
		
	}

}
