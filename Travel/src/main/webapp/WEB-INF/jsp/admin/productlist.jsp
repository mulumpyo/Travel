<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>






<div class="product-list">



<table align="center">
  	<thead>
  		<th style="text-align: center">상품코드</th>
  		<th style="text-align: center">상품명</th>
  		<th style="text-align: center">노출상태</th>
  		<th style="text-align: center">등록날짜</th>
  		<th style="text-align: center"></th>
  	</thead>
  	
  <c:forEach var="product" items="${productList}">
  	<tr>
  		<td>${product.PCode}</td>
  		<td>${product.title}</td>
  		<c:choose>
  			<c:when test="${product.status eq 1}">
		  		<td>상품노출</td>
  			</c:when>
  			<c:otherwise>
		  		<td>상품숨김</td>
  			</c:otherwise>
  		</c:choose>
  		<td><fmt:formatDate value='${product.createdAt}' pattern='yyyy-MM-dd'/></td>
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
        price: "<fmt:formatNumber value='${p.price}' pattern='#,##0'/>",
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
