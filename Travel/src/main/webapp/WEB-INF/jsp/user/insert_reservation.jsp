<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  request.setCharacterEncoding("UTF-8");

  String pCode = request.getParameter("p_code");
  int adult = Integer.parseInt(request.getParameter("adult"));
  int child = Integer.parseInt(request.getParameter("child"));
  int infant = Integer.parseInt(request.getParameter("infant"));
  int userNo = 1; // 로그인 되어있다면 세션에서 가져오세요

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

    if (result > 0) {
      response.sendRedirect("reservationList.jsp"); // 예약 목록 페이지로 이동
    } else {
      out.println("예약 실패");
    }

    pstmt.close();
    conn.close();
  } catch (Exception e) {
    e.printStackTrace();
    out.println("오류: " + e.getMessage());
  }
%>
