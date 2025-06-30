package com.groupone.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.vo.ProductVO;

public class InsertProductControl implements com.groupone.common.Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 관리자 권한 확인
        HttpSession session = req.getSession();
        boolean isAdmin = (boolean) session.getAttribute("isAdmin");
        boolean isLogin = (boolean) session.getAttribute("isLogin");

        if (!isAdmin || !isLogin) {
            res.sendRedirect("productList.do");
            return;
        }

        req.setCharacterEncoding("UTF-8");

        try {
            // 파라미터 수집
        	int userNo = (int) session.getAttribute("userNo");
            String title = req.getParameter("title");
            String description = req.getParameter("description");
            String theme = req.getParameter("theme");
            String country = req.getParameter("country");
            int price = Integer.parseInt(req.getParameter("price"));
            String startDayStr = req.getParameter("start_day");
            String endDayStr = req.getParameter("end_day");

            // 날짜 파싱
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date startDay = sdf.parse(startDayStr);
            Date endDay = sdf.parse(endDayStr);

            // VO 생성
            ProductVO vo = new ProductVO();
            vo.setUserNo(userNo);
            vo.setTitle(title);
            vo.setDescription(description);
            vo.setTheme(theme);
            vo.setCountry(country);
            vo.setPrice(price);
            vo.setStartDay(startDay);
            vo.setEndDay(endDay);
            vo.setStatus(1); // 기본: 노출 상태
            vo.setCreatedAt(new Date()); // 현재 시간 기준

            // 서비스 호출
            ProductService service = new ProductServiceImpl();
            boolean result = service.addProduct(vo); 

            if (result) {
                res.sendRedirect("productList.do");
            } else {
                res.sendRedirect("productInsert.jsp?error=fail");
            }

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "exception");
            req.getRequestDispatcher("admin/productInsert.tiles").forward(req, res);
        }
    }
}
