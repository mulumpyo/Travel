<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
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
         <button id='btn'>🔍</button>
	<table id="target">

	   <tr>
	     <th>순서</th>
	     <th>유형</th>
	     <th>제목</th>
	     <th>작성일</th>
	     <th>답변상태</th>
	   </tr>

	 <c:forEach var="qna" items="${qnaList }">
	   <tr>
	   	 <td>${qna.QCode }</td>
		 <td>${qna.type }</td>	     
	     <td><a href="myqna.do?qCode=${qna.QCode}">${qna.title }</a></td>
	     <td><fmt:formatDate value="${qna.QDate }" pattern="yyyy.MM.dd"/></td>
	     <td>${qna.status }</td>
	   </tr>
	 </c:forEach>
    
	</table>
    
  </main>

    
  <script src="js/qnalist.js"></script>

    