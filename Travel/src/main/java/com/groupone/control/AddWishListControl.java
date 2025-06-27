package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.Control;
import com.groupone.common.MyBatisConfig;
import com.groupone.mapper.WishListMapper;

public class AddWishListControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        Integer userNo = (Integer) session.getAttribute("user_no");
        String pCodeParam = req.getParameter("p_code");

        
        try {
            int pCode = Integer.parseInt(pCodeParam);

            // MyBatis SqlSession 사용
            WishListMapper mapper = MyBatisConfig.getSqlSession().getMapper(WishListMapper.class);

            // 찜 추가
            mapper.insertWishlist(userNo, pCode);

            res.setStatus(HttpServletResponse.SC_OK);
        } catch (NumberFormatException e) {
            res.setStatus(HttpServletResponse.SC_BAD_REQUEST); // p_code 파싱 실패
        } catch (Exception e) {
            e.printStackTrace(); // 콘솔에 에러 출력
            res.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
