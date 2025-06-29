<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <aside>
   <div id="subnav">
      <ul>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">문의하기</a></li>
        <li><a href="#">문의목록</a></li>
      </ul>
    </div>
  </aside>

<main>

	<form action="MyqnaModifySuccess.do" method="post">
	<input type="hidden" name="qCode" value="${qna.QCode }"/>
	
	<table id="target">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${qna.title }"></td>
		</tr>
		<tr>
			<td>문의 내용</td>
			<td><textarea name="">${qna.question }</textarea></td>
		</tr>
		<tr>
			<td>답변내용</td>
			<td><textarea readonly>답변내용 들어가야됨</textarea></td>
		</tr>
		<tr>
			<td>등록일</td>
			<td><fmt:formatDate value="${qna.QDate }" pattern="yyyy.MM.dd" /></td>
		</tr>
	</table>
	<li>
		<button type="submit">수정</button>
		<a href="qnalist.do"><button type="button">취소</button></a>
	</li>
</form>
</main>

<%-- 디버깅용 --%>
<p>QCode 값: ${qna.QCode}</p>
<input type="hidden" name="qcode" value="${qna.QCode}" />
<script src="js/myqna.js"></script>
