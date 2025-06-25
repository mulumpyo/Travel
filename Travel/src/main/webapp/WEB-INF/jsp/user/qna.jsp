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
  <label for="select">분류</label>
  <select id="select">
    <option value="#">상품문의</option>
    <option value="#">예약문의</option>
    <option value="#">기타문의</option>
  </select>
  
  <li>
  	<label for="title">제목</label>
    <input type="title" id="title" size="60">
  </li>
  <li>
  	<label for="question">내용</label>
    <textarea id="question" cols="60" rows="5"></textarea>
  </li>
  <li>
    <p>등록된 문의는 "메인>고객센터>문의내역"에서 확인할수 있습니다.</p>
  </li>
  <li>
    <button id="back"  onclick="location.href='faq.do'">취소</button>
    <button id="insert">등록</button>
  </li>
</main>

<script src="js/qna.js"></script>