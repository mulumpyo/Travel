<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<body>

<div id="container" align="center">
<form action="productList.do" method="post">
   <input type="hidden" name="action" value="update">
    <table>
      <tr>
        <td>상품번호</td>
        <td><input type="text" name="pcode" value="${product.PCode }" size=100 readonly></td>
      </tr>
      <tr>
        <td>상품명</td>
        <td><input type="text" name="title" value="${product.title }" size=100></td>
      </tr>
      <tr>
        <td>상품설명</td>
        <td><input type="text" name="description" value="${product.description}" size=100></td>
      </tr>
      <tr>
        <td>테마</td>
        <td>
        <input type='checkbox' name='theme' value='문화' onclick='checkOnlyOne(this)'/>문화
        <input type='checkbox' name='theme' value='힐링' onclick='checkOnlyOne(this)'/>힐링
        <input type='checkbox' name='theme' value='탐험' onclick='checkOnlyOne(this)'/>탐험
        <input type='checkbox' name='theme' value='휴양' onclick='checkOnlyOne(this)'/>휴양
        <input type='checkbox' name='theme' value='미식' onclick='checkOnlyOne(this)'/>미식
        </td>
      </tr>
      <tr>
        <td>나라</td>
        <td><input type="text" name="country" value="${product.country}" size=100></td>
      </tr>
	  <tr>
		  <td>시작날짜</td>
		  <td>
		    <input type="date" name="start-day"
		           value="<fmt:formatDate value='${product.startDay}' pattern='yyyy-MM-dd'/>"
		           style="width: 200px;">
		  </td>
	  </tr>
	  <tr>
		  <td>종료날짜</td>
		  <td>
		    <input type="date" name="end-day"
		           value="<fmt:formatDate value='${product.endDay}' pattern='yyyy-MM-dd'/>"
		           style="width: 200px;">
		  </td>
	  </tr>
      <tr>
        <td>판매가능인원</td>
        <td><input type="number" name="max-qty" value="${product.maxQty}" size=100 min=0></td>
      </tr>
      <tr>
        <td>사용자 노출 여부</td>
        <td><select>
        	<option name="status-true">상품 노출</option>
       		<option name="status-false">상품 숨김</option>
        </select>
      </tr>
    </table>
   <div>
  <button class="button btnSubmit" type="submit">수정</button>
  <button class="button btnReset" type="reset">취소</button>
	</div>
</form>




</div>



</body>

<script src="js/producModify_a.js"></script>

