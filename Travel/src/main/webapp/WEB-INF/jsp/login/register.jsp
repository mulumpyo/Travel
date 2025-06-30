<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<body>
	<div id="container">
		<%
		String errorMsg = (String) request.getAttribute("errorMsg");
		String id = (String) request.getAttribute("registerId");
		
		SimpleDateFormat todayFormatter = new SimpleDateFormat("yyyy-MM-dd");
		String todayDate = todayFormatter.format(new Date());
		%>

		<c:if test="${not empty errorMsg}">
			<script>
				alert("${errorMsg}");
			</script>
		</c:if>

		<form action="register.do" method="post" id="registerForm" onsubmit="return checkPasswordMatch()">
			<input type="hidden" name="id" value="<%=id%>">
			<input type="hidden" name="toUrl" value="${toUrl}">
			<table>
				<tr>
					<td><label for="name">이름</label></td>
					<td><input type="text" id="name" name="name" autofocus required></td>
				</tr>
				<tr>
					<td><label for="id">아이디</label></td>
					<td><input type="text" id="id" value="<%=id%>"
						readonly></td><!-- 서버에서 받은값 readonly -->

				</tr>
				<tr>
					<td><label for="phone">휴대폰 번호</label></td>
					<td><input type="text" id="phone" name="phone"
						placeholder="숫자와 '-'를 입력해주세요." required></td>
				</tr>
				<tr>
					<td><label for="birth">생년월일</label></td>
					<td><input type="date" id="birth" name="birth"
						max="<%= todayDate %>" min="1800-01-01" value="<%= todayDate %>" required></td>
				</tr>
				<tr>
					<td><label for="pw1">비밀번호</label></td>
					<td><input type="password" id="pw1" name="pw1"
						placeholder="비밀번호를 입력해주세요." required></td>

				</tr>
				<tr>
					<td><label for="pw2">비밀번호 확인</label></td>
					<td><input type="password" id="pw2" name="pw2" required></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2">비밀번호를 동일하게 입력해주세요.</td>
				</tr>


			</table>
			<button type="submit">회원 가입</button>
			<button type="button" onclick="location.href='login.do'">돌아가기</button>
		</form>
	</div>

	<script><!--비밀번호 두개가 같지않을시 알림-->
		function checkPasswordMatch() {
			const pw1 = document.getElementById('pw1').value;
			const pw2 = document.getElementById('pw2').value;

			if (pw1 !== pw2) {
				alert('비밀번호가 일치하지 않습니다. 다시 확인해주세요.');
				document.getElementById('pw2').focus();
				return false;//폼제출 막음
			}
			return true;//폼제출
		}
	</script>
</body>