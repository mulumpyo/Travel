<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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

  <form action="answerSuccess.do">
  <li>
  	<label for="type">분류</label>
    <input type="text" id="type" size="60" readonly value="${answer.type }">
  </li>
  <li>
  	<label for="type">질문번호</label>
    <input type="text" id="type" size="60" readonly value="${answer.type }">
  	<label for="type">사용자</label>
    <input type="text" id="type" size="60" readonly value="${answer.type }">
  </li>
  <li>
  	<label for="question">질문</label>
    <input type="text" id="question" size="60" value="${answer.question}" readonly>
  </li>
  <li>
  	<label for="answer">답변내용</label>
    <textarea id="text" cols="60" rows="5"></textarea>
  </li>
  <li>
  	<label for="writer">담당자</label>
    <input type="text">
  </li>
  

  <li>
    <button id="back"  onclick="location.href='qnalist.do'">취소</button>
    <button type="submit" id="insert">등록</button>
  </li>
  </form>
</main>

