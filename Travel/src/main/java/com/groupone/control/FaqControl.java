package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;

public class FaqControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("user/faq.tiles").forward(req, res);

	}

}
