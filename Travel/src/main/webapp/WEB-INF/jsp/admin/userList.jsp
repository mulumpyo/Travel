<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    

<div class="user-list">


<table align="center">
  	<thead>
  		<th>사용자번호</th>
  		<th>아이디</th>
  		<th>비밀번호</th>
  		<th>이름</th>
  		<th>생년월일</th>
  		<th>전화번호</th>
  		<th>권한</th>
  		<th>삭제</th>
  		<th>수정</th>
  	</thead>
  	
  <c:forEach var="user" items="${userList}">
  	<tr>
  		<td>${user.userNo}</td>
  		<td>${user.userId}</td>
  		<td>${user.userPw}</td>
  		<td>${user.userName}</td>
  		<td><fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/></td>
  		<td>${user.userPhone}</td>
		
  		<c:choose>
  			<c:when test="${user.isAdmin eq 1}">
		  		<td>관리자</td>
  			</c:when>
  			<c:otherwise>
		  		<td>고객</td>
  			</c:otherwise>
  		</c:choose>
		<td><button class="btn-delete" type="button" >삭제</button></td>
		<td><button class="btn-modify" type="button" >수정</button></td>
  	</tr>
  </c:forEach>
</table>



</div>


<script src="js/userList.js"></script>
