<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	String toUrl = (String) request.getAttribute("toUrl");
%>
    <div class="login-container">
        <div class="login-image-section">
        </div>

        <div class="login-form-section">
            <form action="login.do" method="post">
                <input type="hidden" name="toUrl" value="${toUrl}">
                <h1>
                    여행을 떠나기전<br/>로그인 또는 회원가입을 <br/>해주세요 :)
                </h1>

                <input type="text" id="loginId" name="loginId" autofocus
                    placeholder="아이디 입력" required>

                <p>
                    <input type="submit" value="다음">
                </p>
            </form>
             <p class="back-link-container">
                <a href="main.do">메인으로 돌아가기</a>
            </p>
        </div>
    </div>