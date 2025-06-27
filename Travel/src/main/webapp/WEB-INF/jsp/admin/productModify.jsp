<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="com.groupone.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<body>

<div id="container" align="center">
<form action="productModifySuccess.do" method="post">
   <input type="hidden" name="action" value="update">
    <table>
      <tr>
        <td>상품번호</td>
        <td><input type="text" name="pCode" id="pCode" value="${product.PCode }" size=100 readonly></td>
      </tr>
      <tr>
        <td>상품명</td>
        <td><input type="text" name="title" id="title" value="${product.title }" size=100></td>
      </tr>
      <tr>
        <td>상품설명</td>
        <td>
        <textarea name="description" id="description" cols="60" rows="5" value="${product.description}">${product.description}</textarea>
      </tr>
      <tr>
        <td>테마</td>
        <td>
        <input type='radio' name='theme' value='문화' />문화
        <input type='radio' name='theme' value='힐링' />힐링
        <input type='radio' name='theme' value='탐험' />탐험
        <input type='radio' name='theme' value='휴양' />휴양
        <input type='radio' name='theme' value='미식' />미식
        </td>
      </tr>
      <tr>
        <td>나라</td>
        <td><input type="text" name="country" value="${product.country}" size=100></td>
      </tr>
      <tr>
        <td>가격</td>
        <td><input type="text" name="price" value="${product.price}" size=100></td>
      </tr>
	  <tr>
		  <td>시작날짜</td>
		  <td>
		    <input type="date" name="startDay" 
		           value="<fmt:formatDate value='${product.startDay}' pattern='yyyy-MM-dd'/>"
		           style="width: 200px;">
		  </td>
	  </tr>
	  <tr>
		  <td>종료날짜</td>
		  <td>
		    <input type="date" name="endDay" 
		           value="<fmt:formatDate value='${product.endDay}' pattern='yyyy-MM-dd'/>"
		           style="width: 200px;">
		  </td>
	  </tr>
      <tr>
        <td>판매가능인원</td>
        <td><input type="number" name="maxQty" value="${product.maxQty}" size=100 min=0></td>
      </tr>
      
      
	  <tr>
		  <td>사용자 노출 여부</td>
		  <td>
		    <select name="status">
		      <option value="1">상품 노출</option>
		      <option value="0">상품 숨김</option>
		    </select>
		  </td>
	  </tr>
    </table>
   <div>
   <button type="submit" class="btnSubmit">수정</button>
   <button type="reset" class="btnReset" >취소</button>
	</div>
</form>




</div>



</body>


