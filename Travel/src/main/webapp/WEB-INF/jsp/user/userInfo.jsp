<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
UserVO user = (UserVO) request.getAttribute("loginUser");
if (user == null) {
    response.sendRedirect("login.do");
    return;
}
%>

<% String msg = (String) session.getAttribute("msg"); %>
<c:if test="${not empty msg}">
    <script>alert("${msg}");</script>
    <% session.removeAttribute("msg"); %>
</c:if>

<c:if test="${not empty errorMsg}">
    <script>alert("${errorMsg}");</script>
</c:if>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="mypage.do">마이페이지</a></li>
        <li><a href="reservationList.do">예약 내역</a></li>
        <li><a href="wishlistpage.do">찜 리스트</a></li>
        <li><a href="userInfo.do" class="active-nav-item">내 정보 수정</a></li>
      </ul>
    </div>
  </aside>

  <main class="main-content">
    <h2 class="mypage-main-title">회원 정보 수정</h2>

    <div class="user-profile-card">
      <div class="profile-avatar">
        <img src="https://via.placeholder.com/100" alt="프로필 사진">
      </div>
      <div class="profile-info">
        <h3 class="profile-name"><%= user.getUserName() %></h3>
        <p class="profile-email"><%= user.getUserId() %></p>
      </div>
    </div>

    <form action="userInfo.do" method="post" class="form-group">
      <input type="hidden" name="userNo" value="<%= user.getUserNo() %>">

      <div class="form-group">
        <label>휴대폰 번호</label>
        <input type="text" name="userPhone" value="<%= user.getUserPhone() %>" required>
      </div>

      <div class="form-group">
        <label>생년월일</label>
        <div>
          <fmt:formatDate value="${loginUser.userBirth}" pattern="yyyy년 MM월 dd일" />
        </div>
      </div>

      <div class="form-actions">
        <button type="submit" name="action" value="update">정보 수정</button>
        <button type="button" class="cancel-button" onclick="openModal('pwModal')">비밀번호 변경</button>
      </div>
    </form>

    <form action="userInfo.do" method="post">
      <div class="form-actions">
        <button type="submit" name="action" value="delete" class="cancel-button" onclick="return confirm('정말 탈퇴하시겠습니까?');">회원 탈퇴</button>
      </div>
    </form>

    <div id="pwModal" class="modal">
      <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h3>비밀번호 변경</h3>
        <form action="changePw.do" method="post" onsubmit="return changePw()">
          <input type="hidden" name="userNo" value="<%= user.getUserNo() %>">
          <input type="hidden" name="action" value="changePw">

          <label>현재 비밀번호</label>
          <input type="password" name="pw" required><br><br>

          <label>새 비밀번호</label>
          <input type="password" id="newPw" name="newPw" required><br><br>

          <label>새 비밀번호 확인</label>
          <input type="password" id="confirmPw" name="confirmPw" required><br><br>

          <button type="submit">비밀번호 변경</button>
        </form>
      </div>
    </div>
  </main>
</div>

<script>
function openModal() {
  document.getElementById("pwModal").style.display = "block";
}

function closeModal() {
  document.getElementById("pwModal").style.display = "none";
}

window.onclick = function(event) {
  const modal = document.getElementById("pwModal");
  if (event.target === modal) closeModal();
};

function changePw() {
  const newPw = document.getElementById("newPw").value;
  const confirmPw = document.getElementById("confirmPw").value;

  if (newPw !== confirmPw) {
    alert("새 비밀번호가 일치하지 않습니다.");
    return false;
  }
  return true;
}
</script>