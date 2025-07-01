<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.groupone.vo.ReservationVO, com.groupone.vo.ProductVO" %>
<%
    List<ReservationVO> resList = (List<ReservationVO>) request.getAttribute("resList");
    List<ProductVO> wishlist = (List<ProductVO>) request.getAttribute("wishlist");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
%>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="mypage.do">마이페이지</a></li>
        <li><a href="reservationList.do">예약 내역</a></li>
        <li><a href="wishlistpage.do" class="active-nav-item">찜 리스트</a></li>
        <li><a href="userInfo.do">내 정보 수정</a></li>
      </ul>
    </div>
  </aside>

  <main class="main-content">
    <h2 class="mypage-main-title">찜 리스트</h2>

    <p id="no-wish-message" style="display: <%= (wishlist == null || wishlist.isEmpty()) ? "block" : "none" %>;">찜한 상품이 없습니다.</p>

    <% if (wishlist != null && !wishlist.isEmpty()) { %>
      <div class="mypage-card-grid" id="wishlist-container">
        <% for (ProductVO vo : wishlist) { %>
          <div class="mypage-card" id="wish-<%= vo.getPCode() %>">
            <a href="detailpage.do?pcode=<%= vo.getPCode() %>" style="text-decoration: none; color: inherit;">
              <div class="card-icon"><i class="fas fa-heart"></i></div>
              <h3 class="card-heading"><%= vo.getTitle() %></h3>
              <p class="card-description">
                여행일자:
                <%= vo.getStartDay() != null ? sdf.format(vo.getStartDay()) : "없음" %> ~
                <%= vo.getEndDay() != null ? sdf.format(vo.getEndDay()) : "없음" %><br>
              </p>
            </a>
            <button class="wish-delete-btn" onclick="removeWish(<%= vo.getPCode() %>)">삭제</button>
          </div>
        <% } %>
      </div>
    <% } %>
  </main>
</div>

<script>
  function removeWish(pCode) {
    if (!confirm("이 상품을 찜 목록에서 삭제하시겠습니까?")) return;

    fetch("removewish.do?pCode=" + pCode)
      .then(res => res.json())
      .then(data => {
        if (data.retCode === "Success") {
          const card = document.getElementById("wish-" + pCode);
          if (card) card.remove();

          const remaining = document.querySelectorAll(".mypage-card");
          if (remaining.length === 0) {
            document.getElementById("no-wish-message").style.display = "block";
          }
        } else if (data.retCode === "NotLoggedIn") {
          alert("로그인이 필요합니다.");
          location.href = "login.do";
        } else {
          alert("삭제 실패");
        }
      })
      .catch(err => {
        console.error(err);
        alert("요청 중 오류가 발생했습니다.");
      });
  }
</script>
