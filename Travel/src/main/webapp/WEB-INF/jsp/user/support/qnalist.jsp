<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<body>
	<header><h1>문의목록</h1></header>
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
        <input type="search" id="search" name="search" placeholder="검색하고싶은 내용을 입력하세요">
        <button>🔍</button>
	<table>
	   <tr>
	     <th>순서</th>
	     <th>유형</th>
	     <th>제목</th>
	     <th>작성일</th>
	     <th>답변상태</th>
	   </tr>
	   <tr> <!-- 데이터베이스에서 값 가지고오기(지금은 안에 값은 예시 -->
	   	 <td>1</td>
		 <td>상품문의</td>	     
	     <td>트레킹만 다루나요</td>
	     <td>2025/06/23</td>
	     <td>답변완료</td>
	   </tr>
	</table>
    
  </main>

    
    <script src="js/qnalist.js"></script>