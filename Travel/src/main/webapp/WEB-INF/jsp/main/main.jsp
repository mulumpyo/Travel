<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

<div class="container">

	<div class="section">
		<h2 class="section-title">어디로 갈까요?</h2>

			<form action="productList.do" method="get">
			<div class="search-grid">
				<input id="search" name="keyword" placeholder="가고싶은 곳을 입력해주세요 :)" required/>
				<button id="search-btn" type="submit"> <i class="fa-solid fa-magnifying-glass"></i></button>
			</div>
			</form>
		
	</div>
	
	<div class="section">
		<h2 class="section-title">추천 여행지</h2>
		<div class="recommend-list">

		    <a href="productList.do?country=일본" class="list-item country country-japan">일본</a>
		    <a href="productList.do?country=스위스" class="list-item country country-switzerland">스위스</a>
		    <a href="productList.do?country=뉴질랜드" class="list-item country country-newzealand">뉴질랜드</a>
		    <a href="productList.do?country=캐나다" class="list-item country country-canada">캐나다</a>
		    <a href="productList.do?country=멕시코" class="list-item country country-mexico">멕시코</a>
		    <a href="productList.do?country=브라질" class="list-item country country-brazil">브라질</a>

		</div>
	</div>
	
	<c:if test="${isLogin == true && !empty wishlist}">
		<div class="section">
			<h2 class="section-title">${userName}님께서 콕! 찜한 여행</h2>
			<div class="card-list">
			
			<c:forEach var="product" items="${wishlist}" varStatus="cnt">
			    <c:if test="${cnt.index < 3}">
			        <div class="product-card" style="--card-bg-image: url('../../images/product/thumbnail/thumbnail_${product.PCode}.jpg');">
			            <a href="detailpage.do?pcode=${product.PCode}" class="card-link"></a>
			            
			            <div class="badge-container">
			                <span class="badge theme-badge">${product.theme}</span> 
			                <span class="badge country-badge">${product.country}</span>
			            </div>
			
			            <div class="card-text-content">
			                <h3 class="card-title">${product.title}</h3>
			                <p class="card-description">${product.description}</p>
                            <div class="price"><fmt:formatNumber value="${product.price}" pattern="#,##0"/><span class="won">원</span></div>
                            <div class="date">
                                <fmt:formatDate value="${product.startDay}" pattern="yyyy-MM-dd"/> ~ 
                                <fmt:formatDate value="${product.endDay}" pattern="yyyy-MM-dd"/>
                            </div>
			            </div>
			        </div>
			    </c:if>
			</c:forEach>
			<c:if test="${wishlist.size() > 3}">
        <div class="product-card product-card-more">
            <a href="wishlistpage.do" class="card-link"></a>
            <div class="more-content">
                <i class="fas fa-plus"></i>
                <span>더 보기</span>
            </div>
        </div>
        </c:if>
				
			</div>
		</div>
	</c:if>
	
		<div class="section">
			<h2 class="section-title">새롭게 출시된 패키지 여행</h2>
			<div class="card-list">
			
			<c:forEach var="product" items="${newlist}" varStatus="cnt">
			    <c:if test="${cnt.index < 3}">
			        <div class="product-card" style="--card-bg-image: url('../../images/product/thumbnail/thumbnail_${product.PCode}.jpg');">
			            <a href="detailpage.do?pcode=${product.PCode}" class="card-link"></a>
			            
			            <div class="badge-container">
			                <span class="badge theme-badge">${product.theme}</span> 
			                <span class="badge country-badge">${product.country}</span>
			            </div>
			
			            <div class="card-text-content">
			                <h3 class="card-title">${product.title}</h3>
			                <p class="card-description">${product.description}</p>
                            <div class="price"><fmt:formatNumber value="${product.price}" pattern="#,##0"/><span class="won">원</span></div>
                            <div class="date">
                                <fmt:formatDate value="${product.startDay}" pattern="yyyy-MM-dd"/> ~ 
                                <fmt:formatDate value="${product.endDay}" pattern="yyyy-MM-dd"/>
                            </div>
			            </div>
			        </div>
			    </c:if>
			</c:forEach>

        <div class="product-card product-card-more">
            <a href="productList.do" class="card-link"></a>
            <div class="more-content">
                <i class="fas fa-plus"></i>
                <span>더 보기</span>
            </div>
        </div>
				
			</div>
	</div>

</div>