<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

<body>
<div class="container my-5" style="max-width: 800px;">
  <h3 class="text-center mb-4">✏️ 상품 수정</h3>
  
  <form action="productModifySuccess.do" method="post">
    <input type="hidden" name="action" value="update">

    <div class="mb-3">
      <label for="pCode" class="form-label">상품번호</label>
      <input type="text" name="pCode" id="pCode" class="form-control" value="${product.PCode}" readonly>
    </div>

    <div class="mb-3">
      <label for="title" class="form-label">상품명</label>
      <input type="text" name="title" id="title" class="form-control" value="${product.title}">
    </div>

    <div class="mb-3">
      <label for="description" class="form-label">상품설명</label>
      <textarea name="description" id="description" class="form-control" rows="4">${product.description}</textarea>
    </div>

    <div class="mb-3">
      <label class="form-label d-block">테마</label>
      <div class="form-check form-check-inline">
        <input type="radio" name="theme" value="문화" id="theme1" class="form-check-input" <c:if test="${product.theme == '문화'}">checked</c:if>>
        <label class="form-check-label" for="theme1">문화</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" name="theme" value="힐링" id="theme2" class="form-check-input" <c:if test="${product.theme == '힐링'}">checked</c:if>>
        <label class="form-check-label" for="theme2">힐링</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" name="theme" value="탐험" id="theme3" class="form-check-input" <c:if test="${product.theme == '탐험'}">checked</c:if>>
        <label class="form-check-label" for="theme3">탐험</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" name="theme" value="휴양" id="theme4" class="form-check-input" <c:if test="${product.theme == '휴양'}">checked</c:if>>
        <label class="form-check-label" for="theme4">휴양</label>
      </div>
      <div class="form-check form-check-inline">
        <input type="radio" name="theme" value="미식" id="theme5" class="form-check-input" <c:if test="${product.theme == '미식'}">checked</c:if>>
        <label class="form-check-label" for="theme5">미식</label>
      </div>
    </div>

    <div class="mb-3">
      <label for="country" class="form-label">나라</label>
      <input type="text" name="country" id="country" class="form-control" value="${product.country}">
    </div>

    <div class="mb-3">
      <label for="price" class="form-label">가격</label>
      <input type="text" name="price" id="price" class="form-control" value="${product.price}">
    </div>

    <div class="row mb-3">
      <div class="col-md-6">
        <label for="startDay" class="form-label">시작날짜</label>
        <input type="date" name="startDay" id="startDay" class="form-control"
               value="<fmt:formatDate value='${product.startDay}' pattern='yyyy-MM-dd'/>">
      </div>
      <div class="col-md-6">
        <label for="endDay" class="form-label">종료날짜</label>
        <input type="date" name="endDay" id="endDay" class="form-control"
               value="<fmt:formatDate value='${product.endDay}' pattern='yyyy-MM-dd'/>">
      </div>
    </div>

    <div class="mb-3">
      <label for="maxQty" class="form-label">판매 가능 인원</label>
      <input type="number" name="maxQty" id="maxQty" class="form-control" value="${product.maxQty}" min="0">
    </div>

    <div class="mb-4">
      <label for="status" class="form-label">사용자 노출 여부</label>
      <select name="status" id="status" class="form-select">
        <option value="1" <c:if test="${product.status == 1}">selected</c:if>>상품 노출</option>
        <option value="0" <c:if test="${product.status == 0}">selected</c:if>>상품 숨김</option>
      </select>
    </div>

    <div class="d-flex justify-content-end gap-2">
      <button type="submit" class="btn btn-primary">수정</button>
      <button type="reset" class="btn btn-secondary">취소</button>
    </div>
  </form>
</div>
</body>
