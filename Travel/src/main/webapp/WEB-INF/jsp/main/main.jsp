<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

<%
	List<ProductVO> wishlist = (List<ProductVO>) request.getAttribute("wishlist");
%>

<div class="container">

	<div class="section">
		<h2 class="section-title">어디로 갈까요?</h2>

			<form action="productList.do" method="get">
			<div class="search-grid">
				<input id="search" name="keyword" placeholder="가고싶은 곳을 입력해주세요 :)" required/>
				<button id="search-btn" type="submit"> <i class="fa-solid fa-magnifying-glass" style="color: #ffffff;"></i></button>
			</div>
			</form>
		
	</div>
	
	<div class="section">
		<h2 class="section-title">추천여행지</h2>
		<div class="recommend-list">
		
		</div>
	</div>
	

	
	<a href="productList.do?theme=&country=일본">일본</a>
	
	<h2>${userName}님께서 콕! 찜한 여행</h2>
	
	<c:forEach var="product" items="${wishlist}" varStatus="cnt">
		<c:if test="${cnt.index < 3}">
			<p>${product.PCode}</p>
			<p>${product.title}</p>
			<p>${product.description}</p>
		</c:if>
	</c:forEach>
	
	
		<a href="signout.do"><button>logout test</button></a>
</div>

<script src="js/main.js"></script>
