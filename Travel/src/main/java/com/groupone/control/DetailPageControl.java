package com.groupone.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;
import com.groupone.service.ProductService;
import com.groupone.service.ProductServiceImpl;
import com.groupone.service.ReviewService;
import com.groupone.service.ReviewServiceImpl;
import com.groupone.vo.ProductVO;
import com.groupone.vo.ReviewVO;

public class DetailPageControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 1. 파라미터 받기
    	int pcode = Integer.parseInt(req.getParameter("pcode"));
        
        // 2. 서비스 객체 생성
        ProductService service = new ProductServiceImpl();
        ReviewService reviewService = new ReviewServiceImpl();  // 리뷰 서비스 추가
        
        
        // 3. 해당 상품 상세 정보 조회
        ProductVO product = service.getProduct(pcode);
        List<ReviewVO> reviewList = reviewService.getReview(pcode);
        
        
        // 4. 조회된 정보 JSP에 전달
        req.setAttribute("product", product);
        req.setAttribute("reviewList", reviewList);  // 리뷰도 전달
        
        
        // 5. detailpage.tiles로 포워드
        req.getRequestDispatcher("user/detailpage.tiles").forward(req, res);
    }
    
    
}
