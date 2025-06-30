	<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	

	
	
<!-- Bootstrap 포함 (최상단 head에 추가했는지 확인) -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
.product-card {
  width: 500;
  border-radius: 15px;
  overflow: hidden;
  box-shadow: 0 6px 16px rgba(0,0,0,0.15);
  transition: transform 0.3s ease;
  background-color: #fff;
  margin: 50px;
}

.product-card:hover {
  transform: translateY(-5px);
}

.card-image-wrapper {
  height: 500px;
  overflow: hidden;
}

.card-image-wrapper img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.card-content {
  padding: 20px;
}

.badges-wrapper {
  margin-bottom: 10px;
}

.badge {
  margin-right: 5px;
  padding: 6px 12px;
  font-size: 0.8rem;
  border-radius: 20px;
}

.country-badge {
  background-color: #007bff;
  color: white;
}

.theme-badge {
  background-color: #28a745;
  color: white;
}

.title {
  font-weight: 700;
  font-size: 1.2rem;
  margin-bottom: 5px;
}

.description {
  font-size: 0.95rem;
  color: #555;
  margin-bottom: 15px;
}

.price {
  font-size: 1.1rem;
  font-weight: bold;
  color: #e74c3c;
  margin-bottom: 5px;
}

.date {
  font-size: 0.85rem;
  color: #777;
}
</style>


<div class="product-card">
    <a href="detailpage.do?pcode=${product.PCode}" class="card-link">
        <div class="card-image-wrapper">
            <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="상품 이미지" />
            <div class="image-overlay"></div>
        </div>

        <div class="card-content">
            <div class="badges-wrapper">
                <span class="badge country-badge">${product.country}</span>
                <span class="badge theme-badge">${product.theme}</span>
            </div>

            <div class="title">${product.title}</div>
            <div class="description">${product.description}</div>
            <div class="price">
                <fmt:formatNumber value="${product.price}" pattern="#,##0"/>원
            </div>
            <div class="date">
                <fmt:formatDate value="${product.startDay}" pattern="yyyy-MM-dd"/> ~ 
                <fmt:formatDate value="${product.endDay}" pattern="yyyy-MM-dd"/>
            </div>
        </div>
    </a>
</div>
