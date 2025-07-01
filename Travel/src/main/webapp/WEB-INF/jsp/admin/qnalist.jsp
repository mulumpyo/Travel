<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<div class="adminAnswer" id="adminAnswer">
	<table align="center">
		<thead>
			<th>순서</th>
			<th>유형</th>
			<th>제목</th>
			<th>질문내용</th>
			<th>작성일</th>
			<th>답변상태</th>
			<th>답변등록</th>
		</thead>

		<c:forEach var="qna" items="${qnaList}" >
			<tr>
				<td>${qna.QCode}</td>
				<td>${qna.type}</td>
				<td>${qna.title}</td>
				<td>${qna.question}</td>
				<td><fmt:formatDate value='${qna.QDate}' pattern='yyyy-MM-dd' /></td>
				<c:choose>
					<c:when test="${qna.status eq 1}">
						<td>답변대기</td>
					</c:when>
					<c:otherwise>
						<td>답변완료</td>
					</c:otherwise>
				</c:choose>
				<td><a href="answer.do" id="answer">답변등록</a></td>
			</tr>
		</c:forEach>
		</table>
</div>


<script src="js/userList.js"></script>
