<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="faq.do">FAQ</a></li>
        <li><a href="qna.do" class="active-nav-item">1:1 문의</a></li>
        <li><a href="qnalist.do">문의 내역</a></li>
      </ul>
    </div>
  </aside>
  <main class="main-content">
    <form action="qna.do" method="post">
      <div class="form-group">
        <label for="type">분류</label>
        <select id="type" name="type" required>
          <option value="상품문의">상품문의</option>
          <option value="예약문의">예약문의</option>
          <option value="기타문의">기타문의</option>
        </select>
      </div>
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" required>
      </div>
      <div class="form-group">
        <label for="question">내용</label>
        <textarea id="question" name="question" rows="5" required></textarea>
      </div>
      <div class="form-message">
        <p>📌 문의는 "메인>고객센터>문의내역" 에서 확인할수 있습니다.</p>
      </div>
      <div class="form-actions">
        <button type="button" class="cancel-button" onclick="location.href='faq.do'">취소</button>
        <button type="submit">등록</button>
      </div>
    </form>
  </main>
</div>