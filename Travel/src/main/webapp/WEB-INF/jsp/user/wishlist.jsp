<%@page import="java.util.List"%>
<%@page import="com.groupone.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>


<%
    List<ProductVO> list = (List<ProductVO>) request.getAttribute("wishlist");
%>

<div class="product-list">
<h2>찜 목록</h2>
<% if (list != null && !list.isEmpty()) { %>
    <ul>
    <% for (ProductVO vo : list) { %>
        <li>
            <strong>상품명: <%= vo.getTitle() %></strong><br>
            여행 시작일: <%= vo.getStartDay() != null ? sdf.format(vo.getStartDay()) : "없음" %><br>
            여행 종료일: <%= vo.getEndDay() != null ? sdf.format(vo.getEndDay()) : "없음" %><br>
            가격: <%= vo.getPrice() %>원
        </li>
    <% } %>
    </ul>
<% } else { %>
    <p>찜한 상품이 없습니다.</p>
<% } %>
</div>