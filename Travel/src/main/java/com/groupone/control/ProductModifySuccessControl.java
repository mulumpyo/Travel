package com.groupone.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.vo.ProductVO;

public class ProductModifySuccessControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");

		ProductService svc = new ProductServiceImpl();

		HttpSession session = req.getSession();
		
		

		String startDayStr = req.getParameter("startDay");
		String endDayStr = req.getParameter("endDay");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date startDate = null;
		Date endDate = null;
		try {
		    startDate = sdf.parse(startDayStr);
		    endDate = sdf.parse(endDayStr);
		} catch (ParseException e) {
		    e.printStackTrace(); // 또는 적절한 예외 처리
		}
		
		
		
		int pCode = Integer.parseInt(req.getParameter("pCode"));
		String title = req.getParameter("title");
		String description= req.getParameter("description");
		String theme= req.getParameter("theme");
		String country= req.getParameter("country");
		int price= Integer.parseInt(req.getParameter("price"));
		int maxQty= Integer.parseInt(req.getParameter("maxQty"));
		int status= Integer.parseInt(req.getParameter("status"));
		System.out.println("status              "+status);
		
		ProductVO product = new ProductVO();
		product.setPCode(pCode);
		product.setTitle(title);
		product.setDescription(description);
		product.setTheme(theme);
		product.setCountry(country);
		product.setPrice(price);
		product.setStartDay(startDate);
		product.setEndDay(endDate);
		product.setMaxQty(maxQty);
		product.setStatus(status);
		
		svc.modifyProduct(product);
		
		req.setAttribute("product", product);
			

		
		
		req.getRequestDispatcher("admin/productModifySuccess.tiles").forward(req, res);

	}

}
