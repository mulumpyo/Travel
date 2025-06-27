package com.groupone.control;

import java.io.IOException;
import java.util.List;

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

		boolean isLogin = (boolean) session.getAttribute("isLogin") == true && session.getAttribute("isLogin") != null ? true : false;
		
		// ✅ 로그인 안 되어 있으면 로그인 페이지로 리다이렉트
		if (!isLogin) {
			res.sendRedirect("login.do");
			return;
		}

		if (req.getMethod().equals("POST")) {

				int pCode = Integer.parseInt(req.getParameter("p_code"));
				int amount = Integer.parseInt(req.getParameter("totalAmount"));
				int price = Integer.parseInt(req.getParameter("totalPrice"));
				int userNo = (int) session.getAttribute("userNo");

				ReservationVO reservation = new ReservationVO();
				reservation.setPCode(pCode);
				reservation.setAmount(amount);
				reservation.setTPrice(price);
				reservation.setUserNo(userNo);

				ReservationService svc = new ReservationServiceImpl();
				boolean success = svc.insertReservation(reservation);
				
				if (success) {
					res.sendRedirect("reservationList.do");
				} else {
					res.sendRedirect("detailpage.do?pcode=" + pCode + "&error=insertfail");
				}
		}
	}
	

}


