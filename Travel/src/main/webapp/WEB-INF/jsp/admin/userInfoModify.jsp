<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">


<body>


<div class="container my-5" style="max-width: 700px;">
  <form action="userInfoSuccess.do" method="post">
    <input type="hidden" name="action" value="update">

    <table class="table table-borderless">
      <tbody>
        <tr>
          <td class="fw-bold align-middle" style="width: 30%;">사용자번호</td>
          <td><input type="text" name="userNo" id="userNo" value="${user.userNo }" class="form-control" readonly></td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">아이디</td>
          <td><input type="text" name="title" id="title" value="${user.userId }" class="form-control"></td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">비밀번호</td>
          <td><input type="password" name="userPw" id="userPw" value="${user.userPw }" class="form-control"></td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">이름</td>
          <td><input type="text" name="userName" id="userName" value="${user.userName }" class="form-control"></td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">생년월일</td>
          <td>
            <input type="date" name="userBirth" 
                   value="<fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/>"
                   class="form-control" style="max-width: 250px;">
          </td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">전화번호</td>
          <td><input type="tel" name="phone" value="${user.userPhone}" class="form-control"></td>
        </tr>
        <tr>
          <td class="fw-bold align-middle">권한</td>
          <td>
            <c:choose>
              <c:when test="${user.isAdmin eq 1}">
                <input type="text" name="isAdmin" value="관리자" class="form-control" readonly>
              </c:when>
              <c:otherwise>
                <input type="text" name="isAdmin" value="고객" class="form-control" readonly>
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
      </tbody>
    </table>

    <div class="d-flex justify-content-center gap-3 mt-4">
      <button type="submit" class="btn btn-primary px-4">수정</button>
      <button type="reset" class="btn btn-secondary px-4">취소</button>
    </div>
  </form>
</div>


</body>
