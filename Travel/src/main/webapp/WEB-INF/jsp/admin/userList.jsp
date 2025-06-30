<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

    

<div class="user-list">



<div class="container my-5">
  <h3 class="mb-4 text-center">👥 사용자 목록</h3>
  <div class="table-responsive">
    <table class="table table-hover align-middle table-bordered">
      <thead class="table-primary text-center">
        <tr>
          <th>사용자번호</th>
          <th>아이디</th>
          <th>비밀번호</th>
          <th>이름</th>
          <th>생년월일</th>
          <th>전화번호</th>
          <th>권한</th>
          <th>수정</th>
          <th>삭제</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="user" items="${userList}">
          <tr class="text-center">
            <td>${user.userNo}</td>
            <td>${user.userId}</td>
            <td>${user.userPw}</td>
            <td>${user.userName}</td>
            <td><fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/></td>
            <td>${user.userPhone}</td>
            <td>
              <c:choose>
                <c:when test="${user.isAdmin eq 1}">
                  <span class="badge bg-danger">관리자</span>
                </c:when>
                <c:otherwise>
                  <span class="badge bg-secondary">고객</span>
                </c:otherwise>
              </c:choose>
            </td>
            <td>
              <button class="btn btn-warning btn-sm btn-modify">수정</button>
            </td>
            <td>
              <button class="btn btn-danger btn-sm btn-delete">삭제</button>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>



</div>


<script src="js/userList.js"></script>
