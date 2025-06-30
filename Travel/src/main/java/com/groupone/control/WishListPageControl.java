package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.ProductVO;


public class WishListPageControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 1. 로그인한 사용자 번호 (임시로 1번 사용자)
    	// https://url:8080/Travel/wishList.do?userNo=1
    	HttpSession session = req.getSession();
    	
        int userNo = (int) session.getAttribute("userNo");
        
        UserService svc = new UserServiceImpl();
        // 2. 찜한 상품 목록 조회
        List<ProductVO> wishlist = svc.getWishList(userNo);
        
        req.setAttribute("wishlist", wishlist);

        // 4. wishlist.jsp 페이지로 이동
        req.getRequestDispatcher("user/wishlist.tiles").forward(req, res); // WEB-INF/jsp/user/wishlist.jsp
    }
}
