<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
    

	  
	<h2> 😎 ${user.userName }님의 정보 수정 완료</h2>
	<form action="userInfoSuccess.do" method="post">
   <input type="hidden" name="action" value="update">
    <table>
      <tr>
        <td>사용자번호</td>
        <td><input type="text" name="userNo" id="userNo" value="${user.userNo }" size=100 readonly></td>
      </tr>
      <tr>
        <td>아이디</td>
        <td><input type="text" name="title" id="title" value="${user.userId }" size=100></td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td><input type="password" name="userPw" id="userPw" value="${user.userPw }" size=100></td>
      </tr>
      <tr>
        <td>이름</td>
        <td><input type="text" name="userName" id="userName" value="${user.userName }" size=100></td>
      </tr>
      <tr>
        <td>생년월일</td>
		<td><input type="date" name="userBirth" 
		           value="<fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/>"
		           style="width: 200px;"></td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td><input type="tel" name="phone" value="${user.userPhone}" size=100></td>
      </tr>
	  <tr>
		<td>권한</td>
        <td>
        	<c:choose>
        		<c:when test="${user.isAdmin eq 1}">
       				 <input type="text" name="isAdmin" value="관리자" size=100 readonly>
        		</c:when>
        		<c:otherwise>
       				 <input type="text" name="isAdmin" value="고객" size=100 readonly>
        		</c:otherwise>
        	</c:choose>
        
        </td>
	  </tr>
    </table>

</form>
	<td><a href="userInfo.do" class="card-link"><button class="btn-modify" type="button" > 전체 사용자 정보 보기</button></a></td>
	
