<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>






<div class="product-list">

<div class="filter" width=200>
<table>
</table>
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



<table align="center">
  	<thead>
  		<th style="text-align: center">상품코드</th>
  		<th style="text-align: center">상품명</th>
  		<th style="text-align: center">출력상태</th>
  		<th style="text-align: center">등록날짜</th>
  		<th style="text-align: center"></th>
  	</thead>
  	
  <c:forEach var="product" items="${productList}">
  	<tr>
  		<td>${product.PCode}</td>
  		<td>${product.title}</td>
  		<td>${product.status}</td>
  		<td>${product.createdAt}</td>
		<td><button class="btn-delete" type="button" >삭제</button></td>
		<td><button class="btn-modify" type="button" >수정</button></td>
  	</tr>
  </c:forEach>
</table>



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

<script src="js/productlist_a.js"></script>
