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
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.ReservationVO;

public class ReservationAdminControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
	    
		boolean isLogin = session.getAttribute("isLogin") != null 
								? (boolean) session.getAttribute("isLogin") : false;
		
		boolean isAdmin = session.getAttribute("isAdmin") != null 
				? (boolean) session.getAttribute("isAdmin") : false;
		
		if (!(isLogin && isAdmin)) {
			return;
		}
		
		ReservationService svc = new ReservationServiceImpl();
		List<ReservationVO> reservation = svc.getReservationAdmin();
		
		req.setAttribute("reservation", reservation);
		req.getRequestDispatcher("admin/reservationAdmin.tiles").forward(req, res);
		
	}

}
