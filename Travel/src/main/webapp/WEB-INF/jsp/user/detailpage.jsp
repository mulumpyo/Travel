<%@page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
ProductVO product = (ProductVO) request.getAttribute("product");
%>

<div class="container">
		<div class="thumbnail"></div>

		<div class="info">
		<div class="share" onclick="copyCurrentUrl()" style="cursor: pointer;">
  		<i class="fa-solid fa-share-nodes"></i> 공유
		</div>

		<!-- 토스트 메시지 영역 추가 -->
		<div id="toast" class="toast">URL이 복사되었습니다!</div>
		
		<div class="breadcrumbs">continent > country &nbsp;&nbsp; theme</div>
		<div class="title">${product.title}</div>
		<div class="description">${product.description}</div>
		<div class="price">가격 : ${product.price}</div>
		<div class="date">
    여행 날짜 :
   	 	<div class="date">
        <fmt:formatDate value="${product.startDay}" pattern="yy-MM-dd" />
    	</div>
   		 ~
   		 <div class="date">
        <fmt:formatDate value="${product.endDay}" pattern="yy-MM-dd" />
    </div>
</div>
	</div>
<div class="sidebar">
	<div class="detail-review">
		<div class="detail-title">${product.description}</div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>
		<div class="detail-image"
			style="background-image: url('/img/스위스1.avif');"></div>


		<div class="review-title">review</div>

		<c:forEach var="review" items="${reviewList}">
			<div class="review">
				ID - ${review.userNo}<br />
				<div class="stars">
					<c:forEach begin="1" end="5" var="i">
						<c:choose>
							<c:when test="${i <= review.star}">⭐</c:when>
							<c:otherwise>☆</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<div class="rev-title">${review.title}</div>
				<div class="rev-content">${review.content}</div>
				<div class="rev-date">
					작성일 :
					<fmt:formatDate value="${review.createdAt}" pattern="yyyy-MM-dd" />
				</div>
			</div>
		</c:forEach>

		
			<input type="hidden" id="adultPrice" value="4508000"> 
			<input type="hidden" id="childPrice" value="4508000"> 
			<input type="hidden" id="infantPrice" value="442580">

			<h3>인원선택</h3>

			<%
  int adultPrice = product.getPrice(); // 성인 가격
  int childPrice = (int)(adultPrice * 0.6); // 아동 60%
  int infantPrice = (int)(adultPrice * 0.4); // 유아 40%
%>

<div class="price-row">
  성인 : <%= adultPrice %>원
  <div class="counter">
    <button onclick="changeCount('adult', -1)">-</button>
    <span id="adultCount">1</span>
    <button onclick="changeCount('adult', 1)">+</button>
  </div>
</div>

<div class="price-row">
  아동 : <%= childPrice %>원
  <div class="counter">
    <button onclick="changeCount('child', -1)">-</button>
    <span id="childCount">0</span>
    <button onclick="changeCount('child', 1)">+</button>
  </div>
</div>

<div class="price-row">
  유아 : <%= infantPrice %>원
  <div class="counter">
    <button onclick="changeCount('infant', -1)">-</button>
    <span id="infantCount">0</span>
    <button onclick="changeCount('infant', 1)">+</button>
  </div>
</div>

			<hr />
			<div class="total-price" id="totalPrice">4,508,000원</div>
			<div class="reserve-info" id="depositInfo">예약금(10%) 450,800원 결제</div>

			<select style="width: 100%; margin-top: 15px; padding: 5px;">
				<option>무이자할부/결제혜택</option>
			</select>

			<button class="reserve-btn">예약하기</button>
			<div class="like-btn" onclick="toggleLike()" id="likeBtn">♡</div>
		</div>
		<div class="chat-icon" onclick="alert('상담창 오픈!')">💬</div>
	</div>
	
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

		  document.getElementById("totalPrice").innerText = total.toLocaleString()+ '원';
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
	</script>
	<script>
	  document.addEventListener("DOMContentLoaded", function () {
    	updatePrice();
  		});
	</script>

<script>
function showToast(message) {
  const toast = document.getElementById("toast");
  toast.textContent = message;
  toast.classList.add("show");

  setTimeout(() => {
    toast.classList.remove("show");
  }, 2000); // 2초 후 사라짐
}

function copyCurrentUrl() {
  const url = window.location.href;
  navigator.clipboard.writeText(url)
    .then(() => showToast("URL이 복사되었습니다!"))
    .catch(() => showToast("복사에 실패했습니다."));
}
</script>
