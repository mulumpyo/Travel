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
    <option value="상품문의">상품문의</option>
    <option value="예약문의">예약문의</option>
    <option value="기타문의">기타문의</option>
  </select>
  <form>
  <li>
  	<label for="question">질문</label>
    <input type="question" id="question" size="60" readonly>
  </li>
  <li>
  	<label for="question">답변내용</label>
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