<%@page import="com.groupone.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    
<div class="page-container">
    <aside class="sidebar">
        <div id="subnav">
            <ul>
                <li><a href="faq.do">FAQ</a></li>
                <li><a href="qna.do">1:1 문의</a></li>
                <li><a href="qnalist.do" class="active-nav-item">문의 내역</a></li>
            </ul>
        </div>
    </aside>
    
    <main class="main-content">
        <div class="search-area">
            <input type="search" id="search" name="search" placeholder="검색하고싶은 내용을 입력하세요">
            <button id='btn'><i class="fas fa-magnifying-glass" style="color: #ffffff;"></i></button>
        </div>
        
        <table id="target">
            <thead>
                <tr>
                    <th>순서</th>
                    <th>유형</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>답변상태</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="qna" items="${qnaList}">
                    <tr>
                        <td>${qna.QCode }</td>
                        <td>${qna.type }</td>
                        <td><a href="myqna.do?qCode=${qna.QCode}">${qna.title }</a></td>
                        <td><fmt:formatDate value="${qna.QDate }" pattern="yyyy.MM.dd" /></td>
                        <c:choose>
                            <c:when test="${qna.status != 1}">
                                <td><a href ="answer.do">답변완료</a></td>
                            </c:when>
                            <c:otherwise>
                                <td><a href ="qnalist.do">답변대기</a></td>
                            </c:otherwise>
                        </c:choose>
                        <td><button class="btn-delete" type="button">삭제</button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</div>
    
<script src="js/qnalist.js"></script>
