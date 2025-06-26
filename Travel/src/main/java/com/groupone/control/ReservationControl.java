package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.ReservationService;
import com.groupone.service.ReservationServiceImpl;
import com.groupone.vo.ReservationVO;

public class ReservationControl implements Control {

	public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");

		boolean isLogin = session.getAttribute("isLogin").equals("true") ? true : false;

		// ✅ 로그인 안 되어 있으면 로그인 페이지로 리다이렉트
		if (!isLogin) {
			res.sendRedirect("login.do");
			return;
		}

		if (req.getMethod().equals("POST")) {
			try {
				int pCode = Integer.parseInt(req.getParameter("pCode"));
				int amount = Integer.parseInt(req.getParameter("totalAmount"));
				int price = Integer.parseInt(req.getParameter("totalPrice"));
				int userNo = (int) session.getAttribute("userNo");

				ReservationVO vo = new ReservationVO();
				vo.setPCode(pCode);
				vo.setAmount(amount);
				vo.setTPrice(price);
				vo.setUserNo(userNo);

				ReservationService svc = new ReservationServiceImpl();
				boolean success = svc.insertReservation(vo);

				if (success) {
					res.sendRedirect("reservationList.do");
				} else {
					res.sendRedirect("detailpage.do?pcode=" + pCode + "&error=insertfail");
				}
			} catch (Exception e) {
				e.printStackTrace();
				res.sendRedirect("detailpage.do?pcode=" + req.getParameter("pCode") + "&error=exception");
			}
		}
	}
}
