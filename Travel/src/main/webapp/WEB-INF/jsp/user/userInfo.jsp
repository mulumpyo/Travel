<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
    UserVO user = (UserVO) session.getAttribute("loginUser");
    if (user == null) {
        response.sendRedirect("login.do");
        return;
    }
%>

<body>

<div id="container">
  <h2>회원 정보</h2>
<!-- 회원정보 수정 폼 -->
<form action="userInfo.do" method="post">
   <input type="hidden" name="action" value="update">
    <input type="hidden" name="userNo" value="<%= user.getUserNo() %>">
    <table>
      <tr>
        <td>이름</td>
        <td><%= user.getUserName() %></td>
      </tr>
      <tr>
        <td>아이디</td>
        <td><%= user.getUserId() %></td>
      </tr>
      <tr>
        <td>휴대폰 번호</td>
        <td><input type="text" name="userPhone" value="<%= user.getUserPhone() %>"></td>
      </tr>
      <tr>
        <td>생년월일</td>
        <td><%= user.getUserBirth() %></td>
      </tr>
    </table>

  <button type="submit">정보 수정</button>
</form>
</div>
<!-- 회원탈퇴 폼 -->
<form action="userInfo.do" method="post" onsubmit="return confirm('정말 탈퇴하시겠습니까?');">
  <button type="submit">회원 탈퇴</button>
</form>
</body>