<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>






<div class="product-list">

<div class="filter" width=200>
	<nav>
		<p> 😍 키워드를 선택하세요 </p>
		<p> 👀 테마 </p>
		<ul class="theme-ul">
			<c:forEach var="theme" items="${themeList }">
			<li class="filter-theme" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #e9c1fd; color: #605758""> ${theme}</span></li>
			</c:forEach>
		</ul>
		<p> 👀 나라 </p>
		<ul class="country-ul">
			<c:forEach var="country" items="${countryList }">
			<li class="filter-country" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #fdcae9; color: #605758"> ${country}</span></li>
			</c:forEach>		
		</ul>
		
		
		<!-- 필터링이 적용된다면 나오는 코드 -->
		<c:if test="${!empty theme or !empty country}">
		<p> ✔ 선택된 검색 키워드 </p>
		</c:if>
		<ul>
			<c:if test="${!empty theme}">
			  <li class="filter-theme" style="display:inline-block">
			    <span id="checkTheme" class="badge" style="cursor: pointer;">${theme}</span>
			  </li>
	 		<button id="btnResetTheme">✖</button>
			</c:if>
			
			<c:if test="${!empty country}">
			  <li class="filter-country" style="display:inline-block">
			    <span id="checkCountry" class="badge" style="cursor: pointer;">${country}</span>
			  </li>
			  <button id="btnResetCountry">✖</button>
			  
			</c:if>
		</ul>
		<!-- 필터링이 적용된다면 나오는 코드 -->



	</nav>
	
</div>



<c:choose>
  	<c:when test="${empty productList }">
		 <td><h2>죄송합니다.😓</h2></td>
		 <td>일치하는 상품이 없습니다.</td>
	</c:when>
	<c:otherwise>
		<c:forEach var="product" items="${productList}">
		<div class="product-card">
		
			  <a href="detailpage.do?pcode=${product.PCode}" class="card-link">
			    <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="팀 프로젝트 이미지" />
		
			    <div class="card-content">
			      
			      <div class="country">${product.country}<span class="badge"> ${product.theme}</span></div>
			      
			      <div class="title">${product.title}</div>
			      <div class="price">${product.price}<span class="won">원</span></div>
			      <div class="date">${product.startDay} ~ ${product.endDay}</div>
			    </div>
			  </a>
			<!-- <i>heart icon</i> -->
			</div>
		
		</c:forEach>
	
	
	</c:otherwise>
</c:choose>

</div>



<script>
  let theme = "${theme}";
  let country = "${country}";
  const productList = [
    <c:forEach var="p" items="${productList}" varStatus="status">
      {
        pCode: "${p.PCode}",
        userNo: "${p.userNo}",
        title: "${p.title}",
        description: "${p.description}",
        theme: "${p.theme}",
        country: "${p.country}",
        price: "${p.price}",
        startDay: "${p.startDay}",
        endDay: "${p.endDay}",
        maxQty: "${p.maxQty}",
        status: "${p.status}",
        createdAt: "${p.createdAt}"
      }<c:if test="${!status.last}">,</c:if>
    </c:forEach>
  ];
</script>

<script src="js/productlist.js"></script>
