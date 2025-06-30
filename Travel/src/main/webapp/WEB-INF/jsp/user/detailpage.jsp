<%@ page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
  ProductVO product = (ProductVO) request.getAttribute("product");
  int adultPrice = product.getPrice();
  int childPrice = (int) (adultPrice * 0.6);
  int infantPrice = (int) (adultPrice * 0.4);
  boolean isWished = (boolean) request.getAttribute("isWished");
%>

<div class="page-wrapper">
  <main class="main-content-area">
    <section class="section-box thumbnail-section">
      <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="썸네일" />
    </section>

    <section class="section-box product-info">
      <h1 class="detail-title">${product.title}</h1>
      <div class="price-info">
        <fmt:formatNumber value="${product.price}" pattern="#,##0" />원
      </div>
      <div class="date-info">
        여행 날짜:
        <fmt:formatDate value="${product.startDay}" pattern="yy-MM-dd" />
        ~
        <fmt:formatDate value="${product.endDay}" pattern="yy-MM-dd" />
      </div>

      <h3 class="section-sub-title">상세 설명</h3>
      <p>${product.description}</p>
      <div class="detail-image" style="background-image: url('images/product/detail/detail_${product.PCode}.jpg');"></div>
    </section>
  </main>

  <aside class="detail-side-bar">
    <section class="review-section">
      <h3 class="section-sub-title">리뷰</h3>
      <c:forEach var="review" items="${reviewList}">
        <div class="review-card">
          <header class="review-header">
            <span class="review-user">ID - ${review.userNo}</span>
            <div class="stars">
              <c:forEach begin="1" end="5" var="i">
                <c:choose>
                  <c:when test="${i <= review.star}">⭐</c:when>
                  <c:otherwise>☆</c:otherwise>
                </c:choose>
              </c:forEach>
            </div>
          </header>
          <div class="review-title">${review.title}</div>
          <div class="review-content">${review.content}</div>
          <div class="review-date">
            <fmt:formatDate value="${review.createdAt}" pattern="yyyy-MM-dd" />
          </div>
        </div>
      </c:forEach>
    </section>

    <section class="reservation-section">
      <h3 class="section-sub-title">예약</h3>

      <input type="hidden" id="adultPrice" value="<%=adultPrice%>" />
      <input type="hidden" id="childPrice" value="<%=childPrice%>" />
      <input type="hidden" id="infantPrice" value="<%=infantPrice%>" />

      <div class="person-selector">
        <div class="person-selector-row">
          <span>성인 (<fmt:formatNumber value="<%=adultPrice%>" pattern="#,##0" />원)</span>
          <div class="counter">
            <button onclick="changeCount('adult', -1)"><i class="fa-solid fa-minus"></i></button>
            <span id="adultCount">1</span>
            <button onclick="changeCount('adult', 1)"><i class="fa-solid fa-plus"></i></button>
          </div>
        </div>
        <div class="person-selector-row">
          <span>아동 (<fmt:formatNumber value="<%=childPrice%>" pattern="#,##0" />원)</span>
          <div class="counter">
            <button onclick="changeCount('child', -1)"><i class="fa-solid fa-minus"></i></button>
            <span id="childCount">0</span>
            <button onclick="changeCount('child', 1)"><i class="fa-solid fa-plus"></i></button>
          </div>
        </div>
        <div class="person-selector-row">
          <span>유아 (<fmt:formatNumber value="<%=infantPrice%>" pattern="#,##0" />원)</span>
          <div class="counter">
            <button onclick="changeCount('infant', -1)"><i class="fa-solid fa-minus"></i></button>
            <span id="infantCount">0</span>
            <button onclick="changeCount('infant', 1)"><i class="fa-solid fa-plus"></i></button>
          </div>
        </div>
      </div>

      <div class="total-price-display">
        <span>총 가격</span>
        <span id="totalPrice">0원</span>
      </div>
      <div id="depositInfo" class="reserve-info-text"></div>

      <form id="reserveForm" action="Reservation.do" method="post">
        <input type="hidden" name="p_code" value="${product.PCode}" />
        <input type="hidden" name="title" value="${product.title}" />
        <input type="hidden" id="adultInput" name="totalAmount" />
        <input type="hidden" id="totalPriceInput" name="totalPrice" />
        <div class="button-row">
          	<button class="reserve-btn" type="button">예약하기</button>
			<button
			  class="like-icon-btn ${isWished ? "wished" : "not-wished"}"
			  type="button"
			  onclick="toggleWishDetail(this)"
			  id="likeBtn"
			  data-pcode="${product.PCode}"
			  data-wished="${isWished}">
			  <i class="fas fa-heart"></i>
			</button>
        </div>
      </form>
    </section>
  </aside>
</div>

<div id="toast" class="toast">URL이 복사되었습니다!</div>

<script>
  function updatePrice() {
    const adultPrice = parseInt(document.getElementById("adultPrice").value);
    const childPrice = parseInt(document.getElementById("childPrice").value);
    const infantPrice = parseInt(document.getElementById("infantPrice").value);
    const adultCount = parseInt(document.getElementById("adultCount").textContent);
    const childCount = parseInt(document.getElementById("childCount").textContent);
    const infantCount = parseInt(document.getElementById("infantCount").textContent);
    const total = adultPrice * adultCount + childPrice * childCount + infantPrice * infantCount;
    const deposit = Math.floor(total * 0.10);
    document.getElementById("totalPrice").innerText = total.toLocaleString() + '원';
    document.getElementById("depositInfo").innerText = `예약금(10%) ${deposit.toLocaleString()}원 결제`;
  }

  function changeCount(type, delta) {
    const countSpan = document.getElementById(type + 'Count');
    let count = parseInt(countSpan.innerText);
    count += delta;
    if (count < 0) count = 0;
    countSpan.innerText = count;
    updatePrice();
  }

  function toggleLike() {
    const likeBtn = document.getElementById("likeBtn");
    const icon = likeBtn.querySelector("i");
    likeBtn.classList.toggle("liked");
    icon.classList.toggle("fa-regular");
    icon.classList.toggle("fa-solid");
  }

  document.querySelector(".reserve-btn").addEventListener("click", function () {
    const adult = parseInt(document.getElementById("adultCount").innerText);
    const child = parseInt(document.getElementById("childCount").innerText);
    const infant = parseInt(document.getElementById("infantCount").innerText);
    const adultPrice = parseInt(document.getElementById("adultPrice").value);
    const childPrice = parseInt(document.getElementById("childPrice").value);
    const infantPrice = parseInt(document.getElementById("infantPrice").value);
    const totalAmount = adult + child + infant;
    const total = adultPrice * adult + childPrice * child + infantPrice * infant;
    document.getElementById("adultInput").value = totalAmount;
    document.getElementById("totalPriceInput").value = total;
    document.getElementById("reserveForm").submit();
  });

  function showToast(message) {
    const toast = document.getElementById("toast");
    toast.textContent = message;
    toast.classList.add("show");
    setTimeout(() => toast.classList.remove("show"), 1000);
  }

  function copyCurrentUrl() {
    navigator.clipboard.writeText(window.location.href)
      .then(() => showToast("URL이 복사되었습니다!"))
      .catch(() => showToast("복사에 실패했습니다."));
  }

  document.addEventListener("DOMContentLoaded", updatePrice);
  
  function toggleWishDetail(button) {
	  const isWished = button.getAttribute("data-wished") === "true";
	  const url = isWished ? "removewish.do" : "addwish.do";

	  const newWished = !isWished;

	  button.setAttribute("data-wished", newWished.toString());
	  if (newWished) {
	    button.classList.add("wished");
	    button.classList.remove("not-wished");
	  } else {
	    button.classList.remove("wished");
	    button.classList.add("not-wished");
	  }

	  fetch(url + `?pCode=${product.PCode}`)
	    .then(res => res.json())
	    .then(data => {
	      if (data.retCode !== "Success") {
	        button.setAttribute("data-wished", isWished.toString());
	        if (isWished) {
	          button.classList.add("wished");
	          button.classList.remove("not-wished");
	        } else {
	          button.classList.remove("wished");
	          button.classList.add("not-wished");
	        }

	        if (data.retCode === "NotLoggedIn") {
	          alert("로그인이 필요합니다.");
	          location.href = "login.do";
	        } else {
	          alert("처리 실패");
	        }
	      }
	    })
	    .catch(err => {
	      console.error(err);
	      button.setAttribute("data-wished", isWished.toString());
	      if (isWished) {
	        button.classList.add("wished");
	        button.classList.remove("not-wished");
	      } else {
	        button.classList.remove("wished");
	        button.classList.add("not-wished");
	      }
	      alert("요청 중 오류가 발생했습니다.");
	    });
	}





</script>