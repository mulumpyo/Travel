<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<body>

<div>

  <h3>✏️ 상품 수정</h3>

  <form action="productModifySuccess.do" method="post">
    <input type="hidden" name="action" value="update">

    <div>
      <label for="pCode">상품번호</label>
      <input type="text" id="pCode" name="pCode" value="${product.PCode}" readonly>
    </div>

    <div>
      <label for="title">상품명</label>
      <input type="text" id="title" name="title" value="${product.title}">
    </div>

    <div>
      <label for="description">상품설명</label>
      <textarea id="description" name="description" rows="4">${product.description}</textarea>
    </div>

    <div>
      <label>테마</label>
      <c:forEach var="t" items="${['문화','힐링','탐험','휴양','미식']}">
        <input type="radio" name="theme" id="theme_${t}" value="${t}" <c:if test="${product.theme == t}">checked</c:if>>
        <label for="theme_${t}">${t}</label>
      </c:forEach>
    </div>

    <div>
      <label for="country">나라</label>
      <input type="text" id="country" name="country" value="${product.country}">
    </div>

    <div>
      <label for="price">가격</label>
      <input type="number" id="price" name="price" value="${product.price}">
    </div>

    <div>
      <div>
        <label for="startDay">시작날짜</label>
        <input type="date" id="startDay" name="startDay" value="<fmt:formatDate value='${product.startDay}' pattern='yyyy-MM-dd'/>">
      </div>
      <div>
        <label for="endDay">종료날짜</label>
        <input type="date" id="endDay" name="endDay" value="<fmt:formatDate value='${product.endDay}' pattern='yyyy-MM-dd'/>">
      </div>
    </div>

    <div>
      <label for="maxQty">판매 가능 인원</label>
      <input type="number" id="maxQty" name="maxQty" min="0" value="${product.maxQty}">
    </div>

    <div>
      <label for="status">노출 상태</label>
      <select id="status" name="status">
        <option value="1" <c:if test="${product.status == 1}">selected</c:if>>상품 노출</option>
        <option value="0" <c:if test="${product.status == 0}">selected</c:if>>상품 숨김</option>
      </select>
    </div>

    <div>
      <button type="submit">수정</button>
      <button type="reset">취소</button>
    </div>
  </form>
</div>

</body>
