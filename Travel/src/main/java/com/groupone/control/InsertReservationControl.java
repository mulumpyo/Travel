package com.groupone.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.common.Control;

public class InsertReservationControl implements Control {
  public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");

    String pCode = request.getParameter("p_code");
    int adult = Integer.parseInt(request.getParameter("adult"));
    int child = Integer.parseInt(request.getParameter("child"));
    int infant = Integer.parseInt(request.getParameter("infant"));

    // 임시로 사용자 번호 하드코딩 (세션에서 꺼내는 구조가 있다면 그걸로 대체)
    int userNo = 1;

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/your_database?serverTimezone=UTC";
      String user = "your_db_user";
      String password = "your_db_password";
      Connection conn = DriverManager.getConnection(url, user, password);

      String sql = "INSERT INTO tbl_reservation (user_no, p_code, adult_qty, child_qty, infant_qty, created_at) VALUES (?, ?, ?, ?, ?, NOW())";
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, userNo);
      pstmt.setString(2, pCode);
      pstmt.setInt(3, adult);
      pstmt.setInt(4, child);
      pstmt.setInt(5, infant);

      int result = pstmt.executeUpdate();

      pstmt.close();
      conn.close();

      if (result > 0) {
        response.sendRedirect("reservationList.do");
      } else {
        response.getWriter().println("예약 실패");
      }

    } catch (Exception e) {
      e.printStackTrace();
      response.getWriter().println("오류 발생: " + e.getMessage());
    }
  }

@Override
public void exec(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
}
}
