<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    
    
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