<%@ page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
UserVO user = (UserVO) request.getAttribute("loginUser");
String toUrl = (String) request.getAttribute("toUrl");
String retCode = (String) request.getAttribute("retCode");
%>
<!-- 컨트롤러에서 저장한 값 꺼내기 -->
    <div class="login-container">
        <div class="login-image-section">
        </div>

        <div class="login-form-section">
            <form action="realLogin.do" method="post">
            	<input type="hidden" name="toUrl" value="${toUrl}">
                <h1>
                   거의 다 왔어요!<br>비밀번호만 입력하면 돼요.
                </h1>
                <input type="text" id="loginId" name="loginId" value="${loginId}" readonly><br><!-- 아이디 자동입력 -->
				<input type="password" id="loginPw" name="loginPw" placeholder="비밀번호 입력"autofocus required>
                <p>
                    <input type="submit" value="로그인">
                </p>
            </form>
            <p class="back-link-container">
                <a href="login.do">아이디 다시 입력하기</a>
            </p>
        </div>
    </div>

<script><!--로그인 실패 여부-->
	let retCode = "${retCode}"; 
	
	if(retCode != null && retCode === "Fail") { 
		alert("비밀번호가 일치하지 않아요.");
	}
</script>