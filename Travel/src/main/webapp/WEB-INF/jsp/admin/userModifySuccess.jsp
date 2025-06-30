<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
    

	  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<h2 class="mb-4">😎 ${user.userName}님의 정보 수정 완료</h2>

<form action="userInfoSuccess.do" method="post">
  <input type="hidden" name="action" value="update">

  <table class="table table-borderless" style="max-width:700px;">
    <tbody>
      <tr>
        <td class="fw-bold align-middle" style="width: 30%;">사용자번호</td>
        <td><input type="text" name="userNo" id="userNo" value="${user.userNo }" size="100" class="form-control" readonly></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">아이디</td>
        <td><input type="text" name="title" id="title" value="${user.userId }" size="100" class="form-control"></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">비밀번호</td>
        <td><input type="password" name="userPw" id="userPw" value="${user.userPw }" size="100" class="form-control"></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">이름</td>
        <td><input type="text" name="userName" id="userName" value="${user.userName }" size="100" class="form-control"></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">생년월일</td>
        <td><input type="date" name="userBirth" 
                   value="<fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/>"
                   style="width: 200px;" class="form-control"></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">전화번호</td>
        <td><input type="tel" name="phone" value="${user.userPhone}" size="100" class="form-control"></td>
      </tr>
      <tr>
        <td class="fw-bold align-middle">권한</td>
        <td>
          <c:choose>
            <c:when test="${user.isAdmin eq 1}">
              <input type="text" name="isAdmin" value="관리자" size="100" class="form-control" readonly>
            </c:when>
            <c:otherwise>
              <input type="text" name="isAdmin" value="고객" size="100" class="form-control" readonly>
            </c:otherwise>
          </c:choose>
        </td>
      </tr>
    </tbody>
  </table>
</form>

<div class="mt-3">
  <a href="userInfo.do" class="btn btn-outline-primary">전체 사용자 정보 보기</a>
</div>
