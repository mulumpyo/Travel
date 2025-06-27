<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
UserVO user = (UserVO) request.getAttribute("loginUser");
if (user != null) {
	response.sendRedirect("main.do"); // 로그인된 사용자는 홈으로
	return;
}
%>

<c:if test="${not empty errorMsg}">
	<script>
		alert("${errorMsg}");
	</script>
</c:if>

<body>

	<div id="container">
		<form action="realLogin.do" method="post">
			<h3>
				아이디를 입력하여<br>로그인 또는 회원가입
			</h3>
			<input type="text" id="loginId" name="loginId" value="${loginId}" required><br> <input type="password"
				id="loginPw" name="loginPw" autofocus placeholder="비밀번호입력" required><br>
			<p>
				<a href="#" onclick="openModal()">비밀번호 찾기</a>
			</p>
			<p>
				<input type="submit" value="다음">
			</p>
		</form>
	</div>


	<!-- 모달창 비밀번호 찾기 -->
	<div id="findModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">X</span>
			<h3>비밀번호 찾기</h3>
			<form action="findPw.do" method="post" onsubmit="return findPw()">
				<input type="hidden" name="action" value="findPw"> <label>아이디</label><br>
				<input type="text" name="id" value="${loginId}" required><br>
				<br> <label>이름</label><br> <input type="text" id="name" name="name" required autofocus><br> <br> <label>휴대폰
					번호</label><br> <input type="text" id="phone" name="phone" required><br>
				<br>

				<button type="submit">비밀번호 찾기</button>
			</form>
		</div>
	</div>

	<script>
		function openModal() {
			document.getElementById("findModal").style.display = "block";
		}

		function closeModal() {
			document.getElementById("findModal").style.display = "none";
		}

		// 모달 외부 클릭 시 닫기
		window.onclick = function (event) {
			const modal = document.getElementById("findModal");
			if (event.target == modal) {
				closeModal();
			}
		};

	</script>





</body>