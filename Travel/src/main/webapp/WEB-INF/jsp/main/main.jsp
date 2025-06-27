<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

<%
	List<ProductVO> wishlist = (List<ProductVO>) request.getAttribute("wishlist");
%>


<div class="header-bg">
	<div class="container">
		<h1>지금 바로 떠나볼까요?</h1>
		
		<c:choose>
			<c:when test="${isLogin == true}">
				<a href="productList.do">
					<button>여행 떠나기</button>
				</a>
			</c:when>
			<c:otherwise>
				<a href="login.do">
					<button>여행 떠나기</button>
				</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<div class="container">
	<a href="signout.do"><button>logout test</button></a>
	
	
	<h2>어디로 갈까요?</h2>
	<input name="keyword" placeholder="가고싶은 곳을 입력해주세요 :)"/>
	
	<h2>추천여행지</h2>
	
	<a href="productList.do?theme=&country=일본">일본</a>
	
	<h2>${userName}님께서 콕! 찜한 여행</h2>
	
	<c:forEach var="product" items="${wishlist}" varStatus="cnt">
		<c:if test="${cnt.index < 3}">
			<p>${product.PCode}</p>
			<p>${product.title}</p>
			<p>${product.description}</p>
		</c:if>
	</c:forEach>
</div>

<script src="js/main.js"></script>
