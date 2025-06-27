<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${not empty sessionScope.msg}">
	<script>
		alert("${sessionScope.msg}");
	</script>
	<c:remove var="msg" scope="session" />
</c:if>


<c:if test="${not empty errorMsg}">
	<script>
		alert("${errorMsg}");
	</script>
</c:if>

<body>
	<div class="login-bg">
		<div class="login-container">
			<form action="login.do" method="post">
				<h3>
					아이디를 입력하여<br>로그인 또는 회원가입
				</h3>
				<input type="text" id="loginId" name="loginId" autofocus
					placeholder="아이디 입력" required><br>

				<p>
					<input type="submit" value="다음">
				</p>
			</form>
		</div>
	</div>

</body>
