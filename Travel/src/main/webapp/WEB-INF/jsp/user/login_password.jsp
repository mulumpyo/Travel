<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<input type="text" id="loginId" name="loginId" value="${loginId}" required><br>
			<input type="password" id="loginPw"	name="loginPw" autofocus placeholder="비밀번호입력" required><br>
			<p>
				<input type="submit" value="다음">
			</p>
		</form>
	</div>


</body>
