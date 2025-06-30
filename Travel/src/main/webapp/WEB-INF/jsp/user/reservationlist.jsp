<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.groupone.vo.ReservationVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    List<ReservationVO> resList = (List<ReservationVO>) request.getAttribute("resList");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
    String[] statusText = { "취소", "접수", "완료" };
%>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="mypage.do">마이페이지</a></li>
        <li><a href="reservationList.do" class="active-nav-item">예약 내역</a></li>
        <li><a href="wishlistpage.do">찜 리스트</a></li>
        <li><a href="userInfo.do">내 정보 수정</a></li>
      </ul>
    </div>
  </aside>

  <main class="main-content">
    <h2 class="mypage-main-title">예약 내역</h2>

    <% if (resList != null && !resList.isEmpty()) { %>
      <div class="mypage-card-grid">
        <% for (ReservationVO resv : resList) { %>
          <div class="mypage-card">
            <div class="card-icon"><i class="fas fa-plane"></i></div>
            <h3 class="card-heading"><%= resv.getTitle() %></h3>
            <p class="card-description">
              여행일자: <%= sdf.format(resv.getStartDay()) %> ~ <%= sdf.format(resv.getEndDay()) %><br>
              예약 인원: <%= resv.getAmount() %>명<br>
              결제 금액: <fmt:formatNumber value="<%= resv.getTPrice() %>" pattern="#,###" />원<br>
              예약 상태: <strong><%= statusText[resv.getStatus()] %></strong>
            </p>
          </div>
        <% } %>
      </div>
    <% } else { %>
      <p>예약 내역이 없습니다.</p>
    <% } %>
  </main>
</div>
