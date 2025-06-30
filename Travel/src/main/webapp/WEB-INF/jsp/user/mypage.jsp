<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- Font Awesome 아이콘을 위해 head 태그에 아래 CDN 추가 필수! --%>
<%-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> --%>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="mypage.do" class="active-nav-item">마이페이지</a></li>
        <li><a href="reservationList.do">예약 내역</a></li>
        <li><a href="wishlistpage.do">찜 리스트</a></li>
        <li><a href="userInfo.do">내 정보 수정</a></li>
      </ul>
    </div>
  </aside>
  <main class="main-content">
    <h2 class="mypage-main-title">내 정보 한눈에 보기</h2>


    <div class="user-profile-card">
        <div class="profile-avatar">
            <img src="https://via.placeholder.com/100" alt="프로필 사진">
        </div>
        <div class="profile-info">
            <h3 class="profile-name">${userName}</h3>
        </div>
        <div class="profile-actions">
            <a href="userInfo.do" class="profile-edit-button">
                <i class="fas fa-cog"></i> 프로필 수정
            </a>
        </div>
    </div>

    <div class="mypage-card-grid">
        <div class="mypage-card">
            <div class="card-icon"><i class="fas fa-plane"></i></div>
            <h3 class="card-heading">예약 내역</h3>
            <p class="card-description">나의 여행 예약 정보를 확인하고 관리하세요.</p>
            <a href="reservationList.do" class="card-button">바로가기</a>
        </div>
        <div class="mypage-card">
            <div class="card-icon"><i class="fas fa-heart"></i></div>
            <h3 class="card-heading">찜 리스트</h3>
            <p class="card-description">마음에 드는 여행 상품을 다시 확인하고 계획하세요.</p>
            <a href="wishlistpage.do" class="card-button">바로가기</a>
        </div>
        <div class="mypage-card">
            <div class="card-icon"><i class="fas fa-user-edit"></i></div>
            <h3 class="card-heading">내 정보 수정</h3>
            <p class="card-description">개인 정보를 안전하게 관리하고 업데이트하세요.</p>
            <a href="userInfo.do" class="card-button">바로가기</a>
        </div>
    </div>
  </main>
</div>