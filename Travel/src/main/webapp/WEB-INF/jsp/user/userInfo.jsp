<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% UserVO user = (UserVO) request.getAttribute("loginUser");
if (user == null) {
	response.sendRedirect("login.do");
	return;
}%>


<% String msg = (String) session.getAttribute("msg");
if (msg != null) { %>

<script>
        alert("<%=msg%>");
</script>

<% session.removeAttribute("msg"); }%> <!--  한 번 띄운 후 메시지 삭제 -->

<c:if test="${not empty errorMsg}">
	<script>
		alert("${errorMsg}");
	</script>
</c:if>


<body>
	<div id="container">
		<h2>회원 정보</h2>

		<!-- 회원정보 수정 폼 -->
		<form action="userInfo.do" method="post">
			<input type="hidden" name="userNo" value="<%=user.getUserNo()%>">
			<table>
				<tr>
					<td>이름</td>
					<td><%=user.getUserName()%></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><%=user.getUserId()%></td>
				</tr>
				<tr>
					<td>휴대폰 번호</td>
					<td><input type="text" name="userPhone"
						value="<%=user.getUserPhone()%>"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><fmt:formatDate value="${loginUser.userBirth}" pattern="yyyy년 MM월 dd일" /></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="button" value="pwUpdate"
							onclick="openModal('pwModal')">비밀번호 변경</button></td>
				</tr>
			</table>
			<button type="submit" name="action" value="update">정보 수정</button>
		</form>

		<!-- 회원탈퇴 폼 -->
		<form action="userInfo.do" method="post">
			<button type="submit" name="action" value="delete"
				onclick="return confirm('정말 탈퇴하시겠습니까?');">회원 탈퇴</button>
		</form>
	</div>

	<!-- 모달창 -->
	<div id="pwModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">X</span>
			<h3>비밀번호 변경</h3>
			<form action="changePw.do" method="post" onsubmit="return changePw()">
				<input type="hidden" name="userNo" value="<%=user.getUserNo()%>">
				<input type="hidden" name="action" value="changePw">
				 <label>현재 비밀번호</label><br> 
				 <input type="password" name="pw" required><br><br> 
				 <label>새 비밀번호</label><br> <input type="password" id="newPw" name="newPw" required><br> <br> 
				 <label>새 비밀번호 확인</label><br>
				 <input type="password" id="confirmPw" name="confirmPw" required><br> <br>

				<button type="submit">비밀번호 변경</button>
			</form>
		</div>
	</div>

	<script>
		function openModal() {
			document.getElementById("pwModal").style.display = "block";
		}
		function closeModal() {
			document.getElementById("pwModal").style.display = "none";
		}

		// 바깥 클릭 시 모달 닫기
		window.onclick = function(event) {
			const modal = document.getElementById("pwModal");
			if (event.target == modal) {
				closeModal();
			}
		};

		//새 비밀번호 확인
		function changePw() {
			const newPw = document.getElementById('newPw').value;
			const confirmPw = document.getElementById('confirmPw').value;

			if (newPw !== confirmPw) {
				alert('새 비밀번호가 일치하지 않습니다.');
				return false; //제출 막음
			}
			return true; //허용
		}
	</script>

</body>
