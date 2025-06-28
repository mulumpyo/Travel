<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
      
<div class="header-bg">
	<div class="container">
	<div class="header-title">
		<h1 id="main-title">지금 바로 떠나볼까요?</h1>
				<c:choose>
			<c:when test="${isLogin == true}">
				<a href="productList.do">
					<button type="button">여행 떠나기 ></button>
				</a>
			</c:when>
			<c:otherwise>
				<a href="login.do?to=productList.do">
					<button type="button">여행 떠나기 ></button>
				</a>
			</c:otherwise>
		</c:choose>
	</div>
	</div>
</div>