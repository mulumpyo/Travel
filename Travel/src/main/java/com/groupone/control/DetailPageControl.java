package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.service.ReviewService;
import com.groupone.service.ReviewServiceImpl;
import com.groupone.service.WishService;
import com.groupone.service.WishServiceImpl;
import com.groupone.vo.ProductVO;
import com.groupone.vo.ReviewVO;

public class DetailPageControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 1. 파라미터 받기
    	HttpSession session = req.getSession();
    	
    	boolean isLogin = session.getAttribute("isLogin") != null 
    						? (boolean) session.getAttribute("isLogin") : false;
    	int pcode = Integer.parseInt(req.getParameter("pcode"));
    	boolean isWished = false;
    	
        ProductService service = new ProductServiceImpl();
        ReviewService reviewService = new ReviewServiceImpl();

        ProductVO product = service.getProduct(pcode);
        List<ReviewVO> reviewList = reviewService.getReview(pcode);
    	

    	
    	if(isLogin) {
    		
    		int userNo = (int) session.getAttribute("userNo");
            WishService wishService = new WishServiceImpl();
            List<ProductVO> wishlist = wishService.getWishList(userNo);
            
            for(ProductVO wish : wishlist) {
                if (product.getPCode() == wish.getPCode()) {
                    isWished = true;
                    break;
                }
            }
    	}
    	
        req.setAttribute("isWished", isWished);
        req.setAttribute("product", product);
        req.setAttribute("reviewList", reviewList);
        
        req.getRequestDispatcher("user/detailpage.tiles").forward(req, res);
    }
    
    
}
