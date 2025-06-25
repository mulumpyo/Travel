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
			<li class="filter-theme" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #e9c1fd"> ${theme}</span></li>
			</c:forEach>
		</ul>
		<p> 👀 나라 </p>
		<ul class="country-ul">
			<c:forEach var="country" items="${countryList }">
			<li class="filter-country" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #fdcae9; color: #605758"> ${country}</span></li>
			</c:forEach>		
		</ul>
	</nav>
	
</div>


<c:forEach var="product" items="${productList}">
<div class="product-card">
<<<<<<< HEAD
	  <a href="detailpage.do?pcode=${product.PCode}" class="card-link">
	    <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="팀 프로젝트 이미지" />
=======
	  <a href="detailpage?pcode=1" class="card-link">
	    <img src="images/product/thumbnail/thumbnail_${product.PCode }.jpg" alt="팀 프로젝트 이미지" />
>>>>>>> refs/heads/productList0625
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
