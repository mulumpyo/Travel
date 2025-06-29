<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="product-container">

    <div class="filter-section">
        <div class="filter">
            <div>
                <p>키워드를 선택하세요</p>
                <p>테마</p>
                <ul class="theme-ul">
                    <c:forEach var="theme" items="${themeList }">
                    <li class="filter-theme" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #e9c1fd; color: #605758""> ${theme}</span></li>
                    </c:forEach>
                </ul>
                <p>나라</p>
                <ul class="country-ul">
                    <c:forEach var="country" items="${countryList }">
                    <li class="filter-country" style="display:inline-block" ><span class="badge" style="cursor: pointer; background-color: #fdcae9; color: #605758"> ${country}</span></li>
                    </c:forEach>		
                </ul>
                
                
                <c:if test="${!empty theme or !empty country or !empty keyword}">
                <p>선택된 키워드</p>
                </c:if>
                <ul>
                    <c:if test="${!empty theme}">
                      <li class="filter-theme" style="display:inline-block">
                        <span id="checkTheme" class="badge" style="cursor: pointer;">${theme}</span>
                      </li>
                    <button id="btnResetTheme"><i class="fas fa-xmark"></i></button>
                    </c:if>
                    
                    <c:if test="${!empty country}">
                      <li class="filter-country" style="display:inline-block">
                        <span id="checkCountry" class="badge" style="cursor: pointer;">${country}</span>
                      </li>
                      <button id="btnResetCountry"><i class="fas fa-xmark"></i></button>
                      
                    </c:if>
                
                    <c:if test="${!empty keyword}">
                      <li class="filter-keyword" style="display:inline-block">
                        <span id="checkKeyword" class="badge" style="cursor: pointer;">${keyword}</span>
                      </li>			  
                    </c:if>

                </ul>
            </div>
        </div>
    </div>

    <div class="product-display-section">
        <div class="product-list">
            <c:choose>
                <c:when test="${empty productList }">
                    <td><h2>죄송합니다.😓</h2></td>
                    <td>일치하는 상품이 없습니다.</td>
                </c:when>
                <c:otherwise>
                    <c:forEach var="product" items="${productList}">
                    <div class="product-card">
                    
                        <a href="detailpage.do?pcode=${product.PCode}" class="card-link">
                            <div class="card-image-wrapper">
                                <img src="images/product/thumbnail/thumbnail_${product.PCode}.jpg" alt="팀 프로젝트 이미지" />
                                <div class="image-overlay"></div>
                            </div>
                    
                            <div class="card-content">
                            
                                <div class="badges-wrapper">
                                    <span class="badge country-badge">${product.country}</span>
                                    <span class="badge theme-badge">${product.theme}</span>
                                </div>
                            
                                <div class="title">${product.title}</div>
                                <div class="description">${product.description}</div>
                                <div class="price"><fmt:formatNumber value="${product.price}" pattern="#,##0"/><span class="won">원</span></div>
                                <div class="date">
                                	<fmt:formatDate value="${product.startDay}" pattern="yyyy-MM-dd"/> ~ 
                                	<fmt:formatDate value="${product.endDay}" pattern="yyyy-MM-dd"/>
                            	</div>
                            </div>
                        </a>
                        <div class="wish-button">
                            <i class="fas fa-heart"></i>
                        </div>
                    </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>




<script src="js/productlist.js"></script>