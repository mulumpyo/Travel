<%@ page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
  ProductVO product = (ProductVO) request.getAttribute("product");
  int adultPrice = product.getPrice(); // 성인 가격
  int childPrice = (int) (adultPrice * 0.6); // 아동 60%
  int infantPrice = (int) (adultPrice * 0.4); // 유아 40%
%>

<div class="container">
    <!-- 왼쪽 상품 메인 정보 섹션 -->
    <div class="product-main-content">
        <div class="thumbnail-section">
            <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="${product.title} 썸네일"/>
        </div>

        <div class="product-info-section">
            <div class="info-header">
                <div class="breadcrumbs">continent > country &nbsp;&nbsp; theme</div>
                <div class="share" onclick="copyCurrentUrl()">
                    <i class="fa-solid fa-share-nodes"></i> 공유
                </div>
            </div>

            <h1 class="title">${product.title}</h1>
            <p class="description">${product.description}</p>

            <div class="price-info">
                <span class="price-label">가격 :</span>
                <span class="price-value"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                <span class="price-currency">원</span>
            </div>

            <div class="date-info">
                <span class="date-label">여행 날짜 :</span>
                <span class="date-range">
                    <fmt:formatDate value="${product.startDay}" pattern="yy-MM-dd" /> ~
                    <fmt:formatDate value="${product.endDay}" pattern="yy-MM-dd" />
                </span>
            </div>
        </div>
    </div>

    <!-- 오른쪽 사이드바 섹션 -->
    <div class="product-sidebar">
        <!-- 상품 상세 설명 섹션 -->
        <div class="product-detail-description-section">
            <h3 class="section-sub-title">상품 상세 설명</h3>
            <div class="detail-image" style="background-image: url('images/product/detail/detail_${product.PCode}.jpg');"></div>
            <p class="detail-description-text">${product.description}</p>
        </div>

        <!-- 리뷰 섹션 -->
        <div class="review-section">
            <h3 class="section-sub-title">리뷰</h3>
            <c:forEach var="review" items="${reviewList}">
                <div class="review-card">
                    <div class="review-header">
                        <span class="review-user">ID - ${review.userNo}</span>
                        <div class="stars">
                            <c:forEach begin="1" end="5" var="i">
                                <c:choose>
                                    <c:when test="${i <= review.star}">⭐</c:when>
                                    <c:otherwise>☆</c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                    <h4 class="review-title">${review.title}</h4>
                    <p class="review-content">${review.content}</p>
                    <p class="review-date">작성일 : <fmt:formatDate value="${review.createdAt}" pattern="yyyy-MM-dd" /></p>
                </div>
            </c:forEach>
        </div>

        <!-- 예약 및 인원 선택 섹션 -->
        <div class="reservation-section">
            <h3 class="section-sub-title">인원 선택</h3>
            <!-- 가격 정보 숨겨진 input -->
            <input type="hidden" id="adultPrice" value="<%=adultPrice%>">
            <input type="hidden" id="childPrice" value="<%=childPrice%>">
            <input type="hidden" id="infantPrice" value="<%=infantPrice%>">

            <div class="person-selector-row">
                <span class="person-type">성인 : <fmt:formatNumber value="<%=adultPrice%>" pattern="#,##0" />원</span>
                <div class="counter">
                    <button type="button" onclick="changeCount('adult', -1)">-</button>
                    <span id="adultCount">1</span>
                    <button type="button" onclick="changeCount('adult', 1)">+</button>
                </div>
            </div>

            <div class="person-selector-row">
                <span class="person-type">아동 : <fmt:formatNumber value="<%=childPrice%>" pattern="#,##0" />원</span>
                <div class="counter">
                    <button type="button" onclick="changeCount('child', -1)">-</button>
                    <span id="childCount">0</span>
                    <button type="button" onclick="changeCount('child', 1)">+</button>
                </div>
            </div>

            <div class="person-selector-row">
                <span class="person-type">유아 : <fmt:formatNumber value="<%=infantPrice%>" pattern="#,##0" />원</span>
                <div class="counter">
                    <button type="button" onclick="changeCount('infant', -1)">-</button>
                    <span id="infantCount">0</span>
                    <button type="button" onclick="changeCount('infant', 1)">+</button>
                </div>
            </div>

            <hr class="divider" />
            <div class="total-price-display">
                <div class="total-price-label">총 가격:</div>
                <div class="total-price-value" id="totalPrice"></div>
            </div>
            <div class="reserve-info-text" id="depositInfo"></div>

            <select class="payment-option-select">
                <option>무이자할부/결제혜택</option>
            </select>

            <form id="reserveForm" action="Reservation.do" method="post">
              <input type="hidden" name="p_code" value="${product.PCode}" />
              <input type="hidden" name="title" value="${product.title}" />
              <input type="hidden" id="adultInput" name="totalAmount" />
              <input type="hidden" id="totalPriceInput" name="totalPrice" />
              <button class="reserve-btn" type="button">예약하기</button>
            </form>

            <div class="like-btn-wrapper">
                <div class="like-btn" onclick="toggleLike()" id="likeBtn">♡</div>
            </div>
        </div>
    </div>
</div>

<!-- 토스트 메시지 영역 -->
<div id="toast" class="toast">URL이 복사되었습니다!</div>

<script>
	function updatePrice() {
		const adultPrice = parseInt(document.getElementById("adultPrice").value);
		const childPrice = parseInt(document.getElementById("childPrice").value);
		const infantPrice = parseInt(document.getElementById("infantPrice").value);

		const adultCount = parseInt(document.getElementById("adultCount").textContent);
		const childCount = parseInt(document.getElementById("childCount").textContent);
		const infantCount = parseInt(document.getElementById("infantCount").textContent);

		console.log("adultCount:", adultCount, "childCount:", childCount, "infantCount:", infantCount);

		const total = adultPrice * adultCount + childPrice * childCount + infantPrice * infantCount;
		const deposit = Math.floor(total * 0.10);

		// 숫자에 천 단위 콤마 추가해서 화면에 표시
		document.getElementById("totalPrice").innerText = total.toLocaleString() + '원';
		console.log("총 가격 계산 결과:", total);
		document.getElementById("depositInfo").innerText = `예약금(10%) ${deposit.toLocaleString()}원 결제`;
	}

	function changeCount(type, delta) {
		const countSpan = document.getElementById(type + 'Count');
		let count = parseInt(countSpan.innerText);
		count += delta;
		if (count < 0)
			count = 0;
		countSpan.innerText = count;
		updatePrice();
	}

	document.addEventListener("DOMContentLoaded", function () {
		updatePrice();
	});

	function showToast(message) {
		const toast = document.getElementById("toast");
		toast.textContent = message;
		toast.classList.add("show");

		setTimeout(() => {
			toast.classList.remove("show");
		}, 1000); // 1초 후 사라짐
	}

	function copyCurrentUrl() {
		const url = window.location.href;
		navigator.clipboard.writeText(url)
			.then(() => showToast("URL이 복사되었습니다!"))
			.catch(() => showToast("복사에 실패했습니다."));
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
</script>
