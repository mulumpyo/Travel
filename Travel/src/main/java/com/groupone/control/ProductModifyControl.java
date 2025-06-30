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

public class ProductModifyControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ProductService svc = new ProductServiceImpl();

		HttpSession session = req.getSession();

		
		int pCode = 0;
		if (req.getParameter("pCode")!=null) {
			pCode = Integer.parseInt(req.getParameter("pCode"));
			ProductVO product = svc.getProductAdmin(pCode);
			req.setAttribute("product", product);
			
		}
		
		req.getRequestDispatcher("admin/productModify.tiles").forward(req, res);
		

	}

}
