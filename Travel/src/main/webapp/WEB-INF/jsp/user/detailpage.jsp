<%@page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
ProductVO product = (ProductVO) request.getAttribute("product");
%>

<div class="container">
	<div class="thumbnail"></div>

	<div class="info">
		<div class="share">share</div>
		<div class="breadcrumbs">continent > country &nbsp;&nbsp; theme</div>
		<div class="title">${product.title}</div>
		<div class="description">${product.description}</div>
		<div class="price">가격 : ${product.price}</div>
		<div class="date">
			여행 날짜 :
			<div class="date">${product.startDay}</div>
			~
			<div class="date">${product.endDay}</div>
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

			<div class="price-row">
				성인 4,508,000원
				<div class="counter">
					<button onclick="changeCount('adult', -1)">-</button>
					<span id="adultCount">1</span>
					<button onclick="changeCount('adult', 1)">+</button>
				</div>
			</div>

			<div class="price-row">
				아동 4,508,000원
				<div class="counter">
					<button onclick="changeCount('child', -1)">-</button>
					<span id="childCount">0</span>
					<button onclick="changeCount('child', 1)">+</button>
				</div>
			</div>

			<div class="price-row">
				유아 442,580원
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
				<option>신청경로 안내</option>
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

		  document.getElementById("totalPrice").innerText = `${total.toLocaleString()}원`;
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