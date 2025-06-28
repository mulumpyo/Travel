<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<div id="container">
		<%
		String errorMsg = (String) request.getAttribute("errorMsg");
		String id = (String) request.getAttribute("registerId");
		%>

		<c:if test="${not empty errorMsg}">
			<script>
				alert("${errorMsg}");
			</script>
		</c:if>

		<form action="register.do" method="post">
			<input type="hidden" name="id" value="<%=id%>">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" id="name" name="name" autofocus required></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" id="id" value="<%=id%>"
						readonly></td>

				</tr>
				<tr>
					<td>휴대폰 번호</td>
					<td><input type="text" id="phone" name="phone"
						placeholder="숫자와 '-'를 입력해주세요." required></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" id="birth" name="birth"
						max="2077-06-20" min="1500-06-05" value="2025-06-25" required></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" id="pw1" name="pw1"
						placeholder="비밀번호를 입력해주세요." required></td>

				</tr>
				<tr>
					<td></td>
					<td colspan="2">영문 대문자, 영문 소문자, 특수문자를 조합해 입력해주세요.</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
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