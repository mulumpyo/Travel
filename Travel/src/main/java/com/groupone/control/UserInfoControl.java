package com.groupone.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupone.common.Control;
import com.groupone.service.UserService;
import com.groupone.service.UserServiceImpl;
import com.groupone.vo.UserVO;

public class UserInfoControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        
      
        //로그인 확인
        if (session == null || session.getAttribute("userNo") == null) {
            res.sendRedirect("login.do");
            return;
        }

        int userNo = (int) session.getAttribute("userNo");
        String action = req.getParameter("action");

        UserService userService = new UserServiceImpl();
        UserVO loginUser = userService.getUserInfo(userNo);

        if (loginUser == null) {
            res.sendRedirect("login.do");
            return;
        }

    
        
        // 요청 구분

            if ("update".equals(action)) {// 정보 수정
    
                String newPhone = req.getParameter("userPhone");
                loginUser.setUserPhone(newPhone);
    
                boolean success = userService.userModify(loginUser);
                if (success) {
                    session.setAttribute("loginUser", loginUser);
                    session.setAttribute("msg", "회원 정보가 수정되었습니다."); // 세션에 메시지 저장
                    res.sendRedirect("userInfo.do"); // 리다이렉트
                    return; // 꼭 리다이렉트 후 종료
                } else {
                    req.setAttribute("errorMsg", "수정 실패");
                    req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
                }
    
            } else if ("delete".equals(action)) {// 회원 탈퇴
    
                boolean success = userService.userRemove(userNo);
                if (success) {
                    session.invalidate();
                    res.sendRedirect("main.do");
                } else {
                    req.setAttribute("errorMsg", "회원 탈퇴 실패");
                    req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
                }
    
            } else {
                // 단순 조회
                req.setAttribute("loginUser", loginUser); // JSP에서 사용할 수 있도록
                req.getRequestDispatcher("/user/userInfo.tiles").forward(req, res);
            }
        }
    
}