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
  
  <h2>회원정보</h2>
  <form action="updateUser.do" method="post">
  <table>
    <tr>
      <td>이름</td>
      <td>${user.userName}</td>
    </tr>
    <tr>
      <td>아이디</td>
      <td>${user.userId}</td>
    </tr>
    <tr>
      <td>휴대폰 번호</td>
      <td><input type="text" name="userPhone" value="<%= user.getUserPhone() %>"></td>    
    </tr>
    <tr>
      <td>생년월일</td>
      <td>${user.userBirth}</td>
    </tr>
    <tr>
      <td></td>
      <td><button type="button">비밀번호 변경</button></td>
    </tr>
  </table>
  <button type="submit">정보수정</button>
  <button type="submit">회원탈퇴</button>
  </form>
</div>
</body>
