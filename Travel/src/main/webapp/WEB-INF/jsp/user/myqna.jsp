<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="page-container">
  <aside class="sidebar">
   <div id="subnav">
      <ul>
        <li><a href="faq.do">FAQ</a></li>
        <li><a href="qna.do">1:1  문의</a></li>
        <li><a href="qnalist.do" class="active-nav-item">문의 내역</a></li>
      </ul>
    </div>
  </aside>

<main class="main-content">
	<form action="myqnaModifySuccess.do" method="post">
	<input type="hidden" name="qCode" value="${qna.QCode }"/>
	
	<table id="target">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${qna.title }"></td>
		</tr>
		<tr>
			<td>문의 내용</td>
			<td><textarea name="question">${qna.question }</textarea></td>
		</tr>
		<tr>
			<td>등록일</td>
			<td><fmt:formatDate value="${qna.QDate }" pattern="yyyy-MM-dd" /></td>
		</tr>
	</table>
	<ul class="form-actions">
		<li>
			<button type="submit" onclick="alert('수정되었습니다')">수정</button>
			<a href="qnalist.do"><button type="button" class="cancel-button">취소</button></a>
		</li>
	</ul>
</form>
</main>
</div>

<script>
let msg = "${param.msg}";

if (msg == "success") {
    alert("등록 성공");
}
if (msg == "fail") {
    alert("등록 실패");
}
</script>