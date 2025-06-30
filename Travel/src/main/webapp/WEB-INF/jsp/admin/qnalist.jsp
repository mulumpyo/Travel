<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<div class="adminAnswer" id="adminAnswer">
	<table align="center">
		<thead>
			<th style="text-align: center">순서</th>
			<th style="text-align: center">유형</th>
			<th style="text-align: center">제목</th>
			<th style="text-align: center">작성일</th>
			<th style="text-align: center">답변등록</th>
			<th style="text-align: center">답변상태</th>
		</thead>

		<c:forEach var="user" items="${userList}" >
			<tr>
				<td>${qna.QCode}</td>
				<td>${qna.type}</td>
				<td>${qna.title}</td>
				<td><fmt:formatDate value='${qna.QDate}' pattern='yyyy-MM-dd' /></td>
				<td>${qna.status}</td>
				<td><a href="answer.do" id="answer">답변등록</a></td>
			</tr>
		</c:forEach>
		</table>
</div>


<script src="js/userList.js"></script>
