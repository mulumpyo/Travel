<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

    

<div class="user-list">


<table class="table">
  	<thead>
  		<th style="text-align: center">사용자번호</th>
  		<th style="text-align: center">아이디</th>
  		<th style="text-align: center">비밀번호</th>
  		<th style="text-align: center">이름</th>
  		<th style="text-align: center">생년월일</th>
  		<th style="text-align: center">전화번호</th>
  		<th style="text-align: center">권한</th>
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
