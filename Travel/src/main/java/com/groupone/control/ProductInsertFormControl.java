// 새로운 Control 클래스
package com.groupone.control;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ProductInsertFormControl implements com.groupone.common.Control {
    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Boolean isLogin = (Boolean) session.getAttribute("isLogin");
        Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");

        if (isLogin != null && isLogin && isAdmin != null && isAdmin) {
            RequestDispatcher rd = req.getRequestDispatcher("admin/productInsert.tiles");
            rd.forward(req, res);
        } else {
            res.sendRedirect("main.do"); // 또는 로그인 페이지로
        }
    }
}
