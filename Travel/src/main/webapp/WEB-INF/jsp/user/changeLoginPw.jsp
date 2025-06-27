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

	<!-- 모달창 비밀번호 변경 -->
	<div id="changeModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">X</span>
			<h3>비밀번호 변경</h3>
			<form action="changeLoginPw.do" method="post"
				onsubmit="return changePw()">
				<input type="hidden" name="userNo" value="${userNo}"> <label>새
					비밀번호</label><br> <input type="password" id="newPw" name="newPw"
					required><br> <br> <label>새 비밀번호 확인</label><br>
				<input type="password" id="confirmPw" name="confirmPw" required><br>
				<br>
				<button type="submit">비밀번호 변경</button>
			</form>
		</div>
	</div>

	<script>
		function openModal1() {
			document.getElementById("changeModal").style.display = "block";
		}

		function closeModal1() {
			document.getElementById("changeModal").style.display = "none";
		}

		// 클릭 시 모달 닫기
		window.onclick = function(event) {
			const modal = document.getElementById("changeModal");
			if (event.target == modal) {
				closeModal();
			}
		};
	</script>
	<c:if test="${showChangeModal}">
		<script>
			window.addEventListener('load', function() {
				openModal();
			});
		</script>
	</c:if>

</body>
