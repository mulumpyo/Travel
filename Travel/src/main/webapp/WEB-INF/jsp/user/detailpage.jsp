<%@ page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
  ProductVO product = (ProductVO) request.getAttribute("product");
%>

<div class="container">

	<div class="thumbnail">
			<img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg"/>
	</div>

	<div class="info">
		<div class="share" onclick="copyCurrentUrl()" style="cursor: pointer;">
			<i class="fa-solid fa-share-nodes"></i> 공유
		</div>

		<!-- 토스트 메시지 영역 추가 -->
		<div id="toast" class="toast">URL이 복사되었습니다!</div>

		<div class="breadcrumbs">continent > country &nbsp;&nbsp; theme</div>
		

		<div class="title">${product.title}</div>
		<div class="description">${product.description}</div>
		<div class="price">가격 : ${product.price} 원</div>
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
			<div class="detail-title">${product.title}</div>
			<div class="detail-image"
				style="background-image: url('images/product/detail/detail_${product.PCode}.jpg');">
			</div>


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
			<%
			int adultPrice = product.getPrice(); // 성인 가격
			int childPrice = (int) (adultPrice * 0.6); // 아동 60%
			int infantPrice = (int) (adultPrice * 0.4); // 유아 40%
			%>

			<input type="hidden" id="adultPrice" value="<%=adultPrice%>">
			<input type="hidden" id="childPrice" value="<%=childPrice%>">
			<input type="hidden" id="infantPrice" value="<%=infantPrice%>">

			<h3>인원선택</h3>

			<div class="price-row">
				성인 :
				<%=adultPrice%>원
				<div class="counter">
					<button onclick="changeCount('adult', -1)">-</button>
					<span id="adultCount">1</span>
					<button onclick="changeCount('adult', 1)">+</button>
				</div>
			</div>

			<div class="price-row">
				아동 :
				<%=childPrice%>원
				<div class="counter">
					<button onclick="changeCount('child', -1)">-</button>
					<span id="childCount">0</span>
					<button onclick="changeCount('child', 1)">+</button>
				</div>
			</div>

			<div class="price-row">
				유아 :
				<%=infantPrice%>원
				<div class="counter">
					<button onclick="changeCount('infant', -1)">-</button>
					<span id="infantCount">0</span>
					<button onclick="changeCount('infant', 1)">+</button>
				</div>
			</div>

			<hr />
			<div class="total-price" id="totalPrice"></div>
			<div class="reserve-info" id="depositInfo"></div>

			<select style="width: 100%; margin-top: 15px; padding: 5px;">
				<option>무이자할부/결제혜택</option>
			</select>

			<form id="reserveForm" action="Reservation.do" method="post">
			  <input type="hidden" name="p_code" value="${product.PCode}" />
			  <input type="hidden" name="title" value="${product.title}" />
			  <input type="hidden" id="adultInput" name="totalAmount" /> <!-- 총 인원 수 -->
			  <input type="hidden" id="totalPriceInput" name="totalPrice" />
			  <button class="reserve-btn" type="button">예약하기</button>
			</form>
						 
	
			


		</div>
			<div><button id="likeBtn" data-pcode="<%= product.getPCode() %>" onclick="toggleLike(this)">♡</button></div>	
			<div class="chat-icon" onclick="alert('상담창 오픈!')">💬</div>
	</div>
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
		  }, 1000); // 1초 후 사라짐
		}

		function copyCurrentUrl() {
		  const url = window.location.href;
		  navigator.clipboard.writeText(url)
		    .then(() => showToast("URL이 복사되었습니다!"))
		    .catch(() => showToast("복사에 실패했습니다."));
		}
	</script>
	<script>
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
	

	<script>
	function toggleLike(pCode) {
	    console.log("찜 추가 요청 p_code:", pCode); // 디버깅

	    const likeBtn = document.getElementById("likeBtn");
	    const isLiked = likeBtn.textContent === "♥";

	    likeBtn.textContent = isLiked ? "♡" : "♥";
	    likeBtn.style.color = isLiked ? "black" : "red";

	    if (!isLiked) {
	        fetch("addWishList.do", {
	            method: "POST",
	            headers: {
	                "Content-Type": "application/x-www-form-urlencoded"
	            },
	            body: "p_code=" + encodeURIComponent(pCode)
	        })
	        .then(res => {
	            if (!res.ok) alert("찜 추가 실패 (status: " + res.status + ")");
	        })
	        .catch(err => {
	            console.error("fetch 오류:", err);
	            alert("서버 연결 실패");
	        });
	    }
	}
	</script>
	
	
	