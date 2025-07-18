<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 어드민 아이디 체크 -->
<%
String userId = (String) session.getAttribute("user_id");
Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
%>

<div class="product-list">

  <% if (isAdmin != null && isAdmin) { %>
    <div style="text-align: right; margin: 10px 20px;">
        <a href="InsertProduct.do" style="padding: 8px 16px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px;">
            + 상품등록
        </a>
    </div>
  <% } %>

  <div class="container my-5">
    <h3 class="mb-4 text-center">📦 상품 목록</h3>
    
    <div class="table-responsive">
      <table class="table table-hover table-bordered align-middle text-center">
        <thead class="table-primary">
          <tr>
            <th>상품코드</th>
            <th>상품명</th>
            <th>노출상태</th>
            <th>등록날짜</th>
            <th>삭제</th>
            <th>수정</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="product" items="${productList}">
            <tr>
              <td>${product.PCode}</td>
              <td>${product.title}</td>
              <td>
                <c:choose>
                  <c:when test="${product.status eq 1}">
                    <span class="badge bg-success">노출 중</span>
                  </c:when>
                  <c:otherwise>
                    <span class="badge bg-secondary">숨김</span>
                  </c:otherwise>
                </c:choose>
              </td>
              <td>
                <fmt:formatDate value="${product.createdAt}" pattern="yyyy-MM-dd" />
              </td>
              <td>
                <button class="btn btn-danger btn-sm btn-delete" onclick="removeProduct(event, ${product.PCode})">
                  <i class="fas fa-trash-alt"></i> 삭제
                </button>
              </td>
              <td>
                <button class="btn btn-warning btn-sm btn-modify">
                  <i class="fas fa-edit"></i> 수정
                </button>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
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