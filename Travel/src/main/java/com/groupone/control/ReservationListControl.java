package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.common.MybatisUtil;
import com.groupone.mapper.ReservationMapper;
import com.groupone.vo.ReservationVO;

public class ReservationListControl implements Control {
    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        
        HttpSession session = req.getSession();
        int userNo = (int) session.getAttribute("userNo");
        

        ReservationMapper mapper = MybatisUtil.getSession().getMapper(ReservationMapper.class);
        List<ReservationVO> resList = mapper.selectReservation(userNo);

        req.setAttribute("resList", resList);
        req.getRequestDispatcher("user/reservationlist.tiles").forward(req, resp);
        
        
    }
}